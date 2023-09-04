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
Object.defineProperty(exports, "__esModule", { value: true });
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
