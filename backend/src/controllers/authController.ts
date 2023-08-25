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
        return ApiResponse.success(res, {otp: otp, newUser: user === null});
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
            return ApiResponse.success(res, {token, user});
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
        return ApiResponse.success(res, user);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};