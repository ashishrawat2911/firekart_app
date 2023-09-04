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
const fcmService_1 = __importDefault(require("./fcmService"));
class CartService {
    constructor(cartRepository) {
        this.cartRepository = cartRepository;
    }
    getAllProducts(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            return this.cartRepository.getAllCartsForUserId(userId);
        });
    }
    addToCart(userId, productId) {
        return __awaiter(this, void 0, void 0, function* () {
            return this.cartRepository.addProductToCart(userId, productId, 1);
        });
    }
    deleteFromCart(userId, productId) {
        return __awaiter(this, void 0, void 0, function* () {
            return this.cartRepository.delProductFromCart(userId, productId);
        });
    }
    updateQuantity(userId, productId, quantity) {
        return __awaiter(this, void 0, void 0, function* () {
            const dcm = new fcmService_1.default();
            console.log('FCMService');
            yield dcm.sendMessage("Cart Added", " Added to cart ", "fuwzpnVElEQGpUyXg0CInA:APA91bHfNJ1q9K6qKaFDCVepjjPeoaQNdN-QGlm8BzgAbzvuRnRGCODhO16Uu9Li1rJiwcdULIbM1CzHCVuPO8ekTJJIc5tYRtCgfL2c_yB4AwNUdhPrxLiQmVX5FNcZWGkzkQL-_wQd");
            return this.cartRepository.updateCartItemQuantity(userId, productId, quantity);
        });
    }
    clearCart(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            return this.cartRepository.deleteAllItemsInCart(userId);
        });
    }
}
exports.default = CartService;
