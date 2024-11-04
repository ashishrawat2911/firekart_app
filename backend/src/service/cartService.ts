import CartRepository from "../repository/cartRepository";
import Cart from "../models/entity/Cart";
import FCMService from "./fcmService";
import {fcmService} from "../di/di";

export default class CartService {
    constructor(private cartRepository: CartRepository) {
    }

    async getAllProducts(userId: number): Promise<Cart[]> {
        return this.cartRepository.getAllCartsForUserId(userId);
    }

    async addToCart(userId: number, productId: number): Promise<void> {
        return this.cartRepository.addProductToCart(userId, productId, 1);
    }

    async deleteFromCart(userId: number, productId: number): Promise<void> {
        return this.cartRepository.delProductFromCart(userId, productId);
    }

    async updateQuantity(userId: number, productId: number, quantity: number): Promise<void> {
        return this.cartRepository.updateCartItemQuantity(userId, productId, quantity);
    }

    async clearCart(userId: number): Promise<void> {
        return this.cartRepository.deleteAllItemsInCart(userId);
    }
}