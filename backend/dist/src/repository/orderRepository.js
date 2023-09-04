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
class OrderRepository {
    getAllOrdersForUserId(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            const query = 'SELECT * FROM Orders WHERE userId = ?';
            const rows = yield (0, database_1.executeSql)(query, [userId]);
            return rows;
        });
    }
    addOrder(userId, order) {
        return __awaiter(this, void 0, void 0, function* () {
            // Perform the INSERT operation for the order
            const insertQuery = 'INSERT INTO Orders (userId, totalPrice, orderedAt, orderStatus,paymentId,signature) VALUES (?, ?, ?, ?,?,?)';
            const insertParams = [userId, order.price, order.orderedAt, order.orderStatus, order.paymentId, order.signature];
            const { insertId } = yield (0, database_1.executeSql)(insertQuery, insertParams);
            // Perform the INSERT operation for each order item
            const orderItemQuery = 'INSERT INTO OrderItem (orderId, productId, quantity, pricePerItem) VALUES (?, ?, ?, ?)';
            const orderItemParams = order.orderItems.map(item => [insertId, item.productId, item.noOfItems, item.price]);
            yield Promise.all(orderItemParams.map(params => (0, database_1.executeSql)(orderItemQuery, params)));
        });
    }
}
exports.default = OrderRepository;
