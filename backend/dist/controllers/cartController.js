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
exports.deleteFromCart = exports.updateCart = exports.addToCart = exports.fetchAllCarts = void 0;
const apiResponse_1 = __importDefault(require("../response/apiResponse"));
const apiResponseMessages_1 = __importDefault(require("../response/apiResponseMessages"));
const di_1 = require("../di/di");
const express_validator_1 = require("express-validator");
const fetchAllCarts = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const userId = req.userId;
        const data = yield di_1.cartService.getAllProducts(userId);
        return apiResponse_1.default.success(res, apiResponseMessages_1.default.cartFetchedSuccessfully, data);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.fetchAllCarts = fetchAllCarts;
const addToCart = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const errors = (0, express_validator_1.validationResult)(req);
        if (!errors.isEmpty()) {
            return apiResponse_1.default.badRequest(res, apiResponseMessages_1.default.cartNotValid, errors);
        }
        const userId = req.userId;
        const { productId } = req.body;
        const data = yield di_1.cartService.addToCart(userId, productId);
        return apiResponse_1.default.success(res, apiResponseMessages_1.default.addedToCart, data);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.addToCart = addToCart;
const updateCart = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const errors = (0, express_validator_1.validationResult)(req);
        if (!errors.isEmpty()) {
            return apiResponse_1.default.badRequest(res, apiResponseMessages_1.default.cartNotValid, errors);
        }
        const userId = req.userId;
        const { productId, quantity } = req.body;
        if (quantity === 0) {
            const data = yield di_1.cartService.deleteFromCart(userId, productId);
            return apiResponse_1.default.success(res, apiResponseMessages_1.default.deletedFromCart, data);
        }
        else {
            const data = yield di_1.cartService.updateQuantity(userId, productId, quantity);
            return apiResponse_1.default.success(res, apiResponseMessages_1.default.cartUpdated, data);
        }
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.updateCart = updateCart;
const deleteFromCart = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const errors = (0, express_validator_1.validationResult)(req);
        if (!errors.isEmpty()) {
            return apiResponse_1.default.badRequest(res, apiResponseMessages_1.default.cartNotValid, errors);
        }
        const userId = req.userId;
        const { productId } = req.body;
        const data = yield di_1.cartService.deleteFromCart(userId, productId);
        return apiResponse_1.default.success(res, apiResponseMessages_1.default.deletedFromCart, data);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.deleteFromCart = deleteFromCart;
