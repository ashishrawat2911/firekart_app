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
exports.placeOrder = exports.fetchAllOrders = void 0;
const apiResponse_1 = __importDefault(require("../response/apiResponse"));
const apiResponseMessages_1 = __importDefault(require("../response/apiResponseMessages"));
const di_1 = require("../di/di");
const fetchAllOrders = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const userId = req.userId;
        const data = yield di_1.orderService.getAllOrders(userId);
        return apiResponse_1.default.success(res, "Order fetch successfully", data);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.fetchAllOrders = fetchAllOrders;
const placeOrder = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const order = req.body;
        const userId = req.userId;
        const data = yield di_1.orderService.placeOrder(userId, order);
        return apiResponse_1.default.success(res, "Order placed successfully", data);
    }
    catch (error) {
        return apiResponse_1.default.internalServerError(res, apiResponseMessages_1.default.anErrorOccurred, error);
    }
});
exports.placeOrder = placeOrder;
