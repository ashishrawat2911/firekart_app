import {Request, Response} from 'express';
import UserService from '../service/userService';
import ApiResponse from "../response/apiResponse";
import ApiResponseMessages from "../response/apiResponseMessages";
import {validationResult} from "express-validator";
import UserRepository from "../repository/userRepository";

const userService = new UserService(new UserRepository());

export const loginWithPhoneNumber = async (req: Request, res: Response) => {
    try {
        const error = validationResult(req);
        if (!error.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.phoneNumberNotValid, error)
        }
        const {phoneNumber} = req.body;
        const otp = await userService.generateOTP(phoneNumber);
        return ApiResponse.success(res, {otp});
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
        const {phoneNumber, otp} = req.body;
        const isOTPValid = await userService.verifyOTP(phoneNumber, otp);

        if (isOTPValid) {
            const token = await userService.createUserIfNotPresent(phoneNumber);
            return ApiResponse.success(res, {token});
        } else {
            return ApiResponse.unauthorized(res, ApiResponseMessages.invalidOTP);
        }
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

