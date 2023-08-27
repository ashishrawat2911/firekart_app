import {Request, Response} from 'express';
import ApiResponse from "../response/apiResponse";
import ApiResponseMessages from "../response/apiResponseMessages";
import {orderService} from "../di/di";


export const fetchAllOrders = async (req: Request, res: Response) => {
    try {
        const userId = req.userId
        const data = await orderService.getAllOrders(userId!);
        return ApiResponse.success(res, "Order fetch successfully", data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};
export const placeOrder = async (req: Request, res: Response) => {
    try {
        const order = req.body
        const userId = req.userId
        const data = await orderService.placeOrder(userId!, order);
        return ApiResponse.success(res, "Order placed successfully", data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

