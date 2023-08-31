import {Request, Response} from 'express';
import ApiResponse from "../response/apiResponse";
import ApiResponseMessages from "../response/apiResponseMessages";
import {validationResult} from "express-validator";
import {createJWT} from "../utils/jwtUtils";
import {userService} from "../di/di";


export const loginWithPhoneNumber = async (req: Request, res: Response) => {
    try {
        const error = validationResult(req);
        if (!error.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.phoneNumberNotValid, error)
        }
        const {phoneNumber} = req.body;
        const otp = await userService.generateOTP(phoneNumber);
        const user = await userService.getUserByPhoneNumber(phoneNumber)
        return ApiResponse.success(res, "OTP sent successfully", {otp: otp, newUser: user === null});
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

export const verifyOTPAndLogin = async (req: Request, res: Response) => {
    try {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.phoneNumberOrOTPNotValid, errors)
        }
        const {phoneNumber, otp, name} = req.body;
        let user = await userService.getUserByPhoneNumber(phoneNumber);
        if (!user) {
            if (!name) {
                return ApiResponse.badRequest(res, ApiResponseMessages.userNameNotProvided, errors)
            }
        }
        const isOTPValid = await userService.verifyOTP(phoneNumber, otp);
        if (isOTPValid) {
            if (!user) {
                user = await userService.createUser(phoneNumber, name)
            }
            const token = await createJWT(user!.id);
            return ApiResponse.success(res, ApiResponseMessages.loggedInSuccessfully, {token, user});
        } else {
            return ApiResponse.unauthorized(res, ApiResponseMessages.invalidOTP);
        }
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

export const fetchUserDetails = async (req: Request, res: Response) => {
    try {
        const userId = req.userId
        const user = await userService.getUserById(userId!)
        return ApiResponse.success(res, ApiResponseMessages.userFetchedSuccessfully, user);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};
export const fetchUserAddress = async (req: Request, res: Response) => {
    try {
        const userId = req.userId
        const user = await userService.getAddressesByUser(userId!)
        return ApiResponse.success(res, ApiResponseMessages.addressFetchedSuccessfully, user);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

export const addAddress = async (req: Request, res: Response) => {
    try {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.addressNotValid, errors)
        }
        const userId = req.userId
        const address = req.body
        const user = await userService.addAddress(userId!, address)
        return ApiResponse.success(res, ApiResponseMessages.addressAddedSuccessfully, user);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};
export const updateDefaultAddress = async (req: Request, res: Response) => {
    try {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.addressIdNotValid, errors)
        }
        const userId = req.userId;
        const {addressId} = req.params;

        // Call the service function to update the default address
        const data = await userService.updateAddressToDefault(Number(addressId), Number(userId));

        return ApiResponse.success(res, ApiResponseMessages.addressUpdatedSuccessfully, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};
export const editAddress = async (req: Request, res: Response) => {
    try {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.addressIdNotValid, errors)
        }
        const address = req.body;
        const userId = req.userId;

        const data = await userService.editAddress(userId!, address);

        return ApiResponse.success(res, ApiResponseMessages.addressUpdatedSuccessfully, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};