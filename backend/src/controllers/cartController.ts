import {Request, Response} from 'express';
import ApiResponse from "../response/apiResponse";
import ApiResponseMessages from "../response/apiResponseMessages";
import {cartService} from "../di/di";


export const fetchAllCarts = async (req: Request, res: Response) => {
    try {
        const userId = req.userId
        const data = await cartService.getAllProducts(userId!);
        return ApiResponse.success(res, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};
export const addToCart = async (req: Request, res: Response) => {
    try {
        const userId = req.userId
        const {productId} = req.body;
        const data = await cartService.addToCart(userId!, productId);
        return ApiResponse.success(res, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

export const updateCart = async (req: Request, res: Response) => {
    try {
        const userId = req.userId
        const {productId, quantity} = req.body;
        const data = await cartService.updateQuantity(userId!, productId, quantity);
        return ApiResponse.success(res, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};
export const deleteFromCart = async (req: Request, res: Response) => {
    try {
        const userId = req.userId
        const {productId} = req.body;
        const data = await cartService.deleteFromCart(userId!, productId);
        return ApiResponse.success(res, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

