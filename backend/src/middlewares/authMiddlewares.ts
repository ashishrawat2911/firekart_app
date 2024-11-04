import jwt from 'jsonwebtoken';
import {JWT_SECRET_KEY} from '../config/configs';
import {NextFunction, Request, Response} from 'express';
import ApiResponse from "../response/apiResponse";


export const authenticateMiddleware = (req: Request, res: Response, next: NextFunction) => {
    const authorizationHeader = req.headers['authorization'];

    if (authorizationHeader) {
        try {
            const token = authorizationHeader.split(' ')[1];
            const decodedToken: any = jwt.verify(token, JWT_SECRET_KEY ?? '');

            if (decodedToken && decodedToken.exp >= Math.floor(Date.now() / 1000)) {
                req.userId = decodedToken.userId;
                next();
            } else {
                return ApiResponse.unauthorized(res, 'Token is expired');
            }
        } catch (error) {
            return ApiResponse.unauthorized(res, 'Invalid token');
        }
    } else {
        return ApiResponse.unauthorized(res, 'Token not provided')
    }
};
