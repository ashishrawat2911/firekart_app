import {Request, Response} from 'express';
import ApiResponse from "../response/apiResponse";
import ApiResponseMessages from "../response/apiResponseMessages";
import {validationResult} from "express-validator";
import {productService} from "../di/di";


export const fetchAllProducts = async (req: Request, res: Response) => {
    try {
        const error = validationResult(req);
        if (!error.isEmpty()) {
            return ApiResponse.badRequest(res, ApiResponseMessages.pageOffSetNotValid, error)
        }
        const {page, offset} = req.body;
        const data = await productService.getAllProducts(page, offset);
        return ApiResponse.success(res, ApiResponseMessages.productFetchSuccessfully, data);
    } catch (error) {
        return ApiResponse.internalServerError(res, ApiResponseMessages.anErrorOccurred, error);
    }
};


