"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.fcmService = exports.orderService = exports.userService = exports.productService = exports.cartService = exports.orderRepository = exports.userRepository = exports.productRepository = exports.cartRepository = void 0;
const cartRepository_1 = __importDefault(require("../repository/cartRepository"));
const cartService_1 = __importDefault(require("../service/cartService"));
const productRepository_1 = __importDefault(require("../repository/productRepository"));
const productService_1 = __importDefault(require("../service/productService"));
const userRepository_1 = __importDefault(require("../repository/userRepository"));
const userService_1 = __importDefault(require("../service/userService"));
const orderRepository_1 = __importDefault(require("../repository/orderRepository"));
const orderService_1 = __importDefault(require("../service/orderService"));
const fcmService_1 = __importDefault(require("../service/fcmService"));
//Repository
exports.cartRepository = new cartRepository_1.default();
exports.productRepository = new productRepository_1.default();
exports.userRepository = new userRepository_1.default();
exports.orderRepository = new orderRepository_1.default();
//Service
exports.cartService = new cartService_1.default(exports.cartRepository);
exports.productService = new productService_1.default(exports.productRepository);
exports.userService = new userService_1.default(exports.userRepository);
exports.orderService = new orderService_1.default(exports.orderRepository);
exports.fcmService = new fcmService_1.default();
