"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.getExpFromToken = exports.getUserIdFromToken = exports.createJWT = void 0;
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const configs_1 = require("../config/configs");
const createJWT = (userId) => __awaiter(void 0, void 0, void 0, function* () {
    console.log(`createToken ${userId}`);
    const token = jsonwebtoken_1.default.sign({ userId }, configs_1.JWT_SECRET_KEY || '', { expiresIn: '99h' });
    console.log(`token ${token}`);
    return token;
});
exports.createJWT = createJWT;
const getUserIdFromToken = (authorization) => {
    const token = authorization.split(' ')[1];
    const decodedToken = jsonwebtoken_1.default.verify(token, configs_1.JWT_SECRET_KEY !== null && configs_1.JWT_SECRET_KEY !== void 0 ? configs_1.JWT_SECRET_KEY : '');
    return decodedToken.userId;
};
exports.getUserIdFromToken = getUserIdFromToken;
const getExpFromToken = (authorization) => {
    const token = authorization.split(' ')[1];
    const decodedToken = jsonwebtoken_1.default.verify(token, configs_1.JWT_SECRET_KEY !== null && configs_1.JWT_SECRET_KEY !== void 0 ? configs_1.JWT_SECRET_KEY : '');
    return decodedToken.exp;
};
exports.getExpFromToken = getExpFromToken;
