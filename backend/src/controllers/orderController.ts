import {Request, Response} from 'express';
import ApiResponse from "../response/apiResponse";
import ApiResponseMessages from "../response/apiResponseMessages";
import {fcmService, orderService} from "../di/di";
import {validationResult} from "express-validator";


export const fetchAllOrders = async (req: Request, res: Response) => {
    try {
        const userId = req.userId
        const data = await orderService.getAllOrders(userId!);
        return ApiResponse.success(res, ApiResponseMessages.orderFetchSuccessfully, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};
export const placeOrder = async (req: Request, res: Response) => {
    try {
        const error = validationResult(req);
        if (!error.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.orderNotValid, error)
        }
        const order = req.body
        const userId = req.userId
        const data = await orderService.placeOrder(userId!, order);
        return ApiResponse.success(res, ApiResponseMessages.orderPlacedSuccessfully, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

