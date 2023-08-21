import {Request, Response} from 'express';
import UserService from '../service/userService';
import {createToken} from '../utils/jwtUtils';
import ApiResponse from "../response/apiResponse";
import ApiResponseMessages from "../response/apiResponseMessages";

const userService = new UserService();

export const loginWithPhoneNumber = async (req: Request, res: Response) => {
    try {
        const {phoneNumber} = req.body;
        const otp = await userService.generateOTP(phoneNumber);
        return ApiResponse.success(res, {otp});
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

export const verifyOTPAndLogin = async (req: Request, res: Response) => {
    try {
        const {phoneNumber, otp} = req.body;
        const isOTPValid = await userService.verifyOTP(phoneNumber, otp);

        if (isOTPValid) {
            // User verified, generate JWT token and send it
            let user = await userService.getUserByPhoneNumber(phoneNumber);
            if (!user) {
                user = await userService.createUser(phoneNumber)
            }
            const token = createToken(user!.id);
            return ApiResponse.success(res, {token});

        } else {
            return ApiResponse.unauthorized(res, ApiResponseMessages.invalidOTP);
        }
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

