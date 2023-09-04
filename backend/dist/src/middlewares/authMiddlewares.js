"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.authenticateMiddleware = void 0;
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const configs_1 = require("../config/configs");
const apiResponse_1 = __importDefault(require("../response/apiResponse"));
const authenticateMiddleware = (req, res, next) => {
    const authorizationHeader = req.headers['authorization'];
    if (authorizationHeader) {
        try {
            const token = authorizationHeader.split(' ')[1];
            const decodedToken = jsonwebtoken_1.default.verify(token, configs_1.JWT_SECRET_KEY !== null && configs_1.JWT_SECRET_KEY !== void 0 ? configs_1.JWT_SECRET_KEY : '');
            if (decodedToken && decodedToken.exp >= Math.floor(Date.now() / 1000)) {
                req.userId = decodedToken.userId;
                next();
            }
            else {
                return apiResponse_1.default.unauthorized(res, 'Token is expired');
            }
        }
        catch (error) {
            return apiResponse_1.default.unauthorized(res, 'Invalid token');
        }
    }
    else {
        return apiResponse_1.default.unauthorized(res, 'Token not provided');
    }
};
exports.authenticateMiddleware = authenticateMiddleware;
