import {Request, Response} from 'express';
import ApiResponse from "../response/apiResponse";
import ApiResponseMessages from "../response/apiResponseMessages";
import {cartService} from "../di/di";
import {validationResult} from "express-validator";


export const fetchAllCarts = async (req: Request, res: Response) => {
    try {
        const userId = req.userId
        const data = await cartService.getAllProducts(userId!);
        return ApiResponse.success(res, ApiResponseMessages.cartFetchedSuccessfully, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};
export const addToCart = async (req: Request, res: Response) => {
    try {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.cartNotValid, errors)
        }
        const userId = req.userId
        const {productId} = req.body;
        const data = await cartService.addToCart(userId!, productId);
        return ApiResponse.success(res, ApiResponseMessages.addedToCart, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

export const updateCart = async (req: Request, res: Response) => {
    try {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.cartNotValid, errors)
        }
        const userId = req.userId
        const {productId, quantity} = req.body;
        if (quantity === 0) {
            const data = await cartService.deleteFromCart(userId!, productId);
            return ApiResponse.success(res, ApiResponseMessages.deletedFromCart, data);
        } else {
            const data = await cartService.updateQuantity(userId!, productId, quantity);
            return ApiResponse.success(res, ApiResponseMessages.cartUpdated, data);
        }

    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};
export const deleteFromCart = async (req: Request, res: Response) => {
    try {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.cartNotValid, errors)
        }
        const userId = req.userId
        const {productId} = req.body;
        const data = await cartService.deleteFromCart(userId!, productId);
        return ApiResponse.success(res, ApiResponseMessages.deletedFromCart, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};

