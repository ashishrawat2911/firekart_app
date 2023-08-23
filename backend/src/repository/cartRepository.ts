import Cart from "../models/entity/Cart";
import {executeSql} from "../database/database";

export default class CartRepository {
    async getAllCartsForUserId(userId: number): Promise<Cart[]> {
        const query = `
            SELECT c.productId,
                   p.image,
                   p.name,
                   p.unit,
                   p.currency,
                   p.currentPrice,
                   p.quantityPerUnit,
                   c.quantity as numOfItems
            FROM Cart c
                     JOIN Product p ON c.productId = p.id
            WHERE c.userId = ?`;
        const rows = await executeSql(query, [userId]);
        return rows;
    }

    async addProductToCart(userId: number, productId: number, quantity: number): Promise<void> {
        const query = 'INSERT INTO Cart (userId, productId, quantity) VALUES (?, ?, ?)';
        await executeSql(query, [userId, productId, quantity]);
    }

    async delProductFromCart(userId: number, productId: number): Promise<void> {
        const query = 'DELETE FROM Cart WHERE userId = ? AND productId = ?';
        await executeSql(query, [userId, productId]);
    }

    async checkItemInCart(userId: number, productId: string): Promise<number> {
        const query = 'SELECT COUNT(*) AS count FROM Cart WHERE userId = ? AND productId = ?';
        const [rows] = await executeSql(query, [userId, productId]);
        return rows[0].count;
    }

    async updateCartItemQuantity(userId: number, productId: number, quantity: number): Promise<void> {
        const query = 'UPDATE Cart SET quantity = ? WHERE userId = ? AND productId = ?';
        await executeSql(query, [quantity, userId, productId]);
    }

    async deleteAllItemsInCart(userId: number): Promise<void> {
        const query = 'DELETE FROM Cart WHERE userId = ?';
        await executeSql(query, [userId]);
    }
}