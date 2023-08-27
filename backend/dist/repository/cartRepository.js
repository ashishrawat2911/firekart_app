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
const database_1 = require("../database/database");
class CartRepository {
    getAllCartsForUserId(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = `
            SELECT c.productId,
                   p.image,
                   p.name,
                   p.unit,
                   p.currency,
                   p.currentPrice,
                   p.quantityPerUnit,
                   c.quantity
            FROM Cart c
                     JOIN Product p ON c.productId = p.id
            WHERE c.userId = ?`;
            const rows = yield (0, database_1.executeSql)(query, [userId]);
            return rows;
        });
    }
    addProductToCart(userId, productId, quantity) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'INSERT INTO Cart (userId, productId, quantity) VALUES (?, ?, ?)';
            yield (0, database_1.executeSql)(query, [userId, productId, quantity]);
        });
    }
    delProductFromCart(userId, productId) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'DELETE FROM Cart WHERE userId = ? AND productId = ?';
            yield (0, database_1.executeSql)(query, [userId, productId]);
        });
    }
    checkItemInCart(userId, productId) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'SELECT COUNT(*) AS count FROM Cart WHERE userId = ? AND productId = ?';
            const [rows] = yield (0, database_1.executeSql)(query, [userId, productId]);
            return rows[0].count;
        });
    }
    updateCartItemQuantity(userId, productId, quantity) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'UPDATE Cart SET quantity = ? WHERE userId = ? AND productId = ?';
            yield (0, database_1.executeSql)(query, [quantity, userId, productId]);
        });
    }
    deleteAllItemsInCart(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'DELETE FROM Cart WHERE userId = ?';
            yield (0, database_1.executeSql)(query, [userId]);
        });
    }
}
exports.default = CartRepository;
