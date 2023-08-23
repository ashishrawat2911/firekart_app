import {executeSql} from "../database/database";
import OrderRequestDTO from "../models/dto/request/OrderRequestDTO";
import Order from "../models/entity/Order";

export default class OrderRepository {
    async getAllOrdersForUserId(userId: number): Promise<Order[]> {
        const query = 'SELECT * FROM Orders WHERE userId = ?';
        const rows = await executeSql(query, [userId]);
        return rows;
    }

    async addOrder(userId: number, order: OrderRequestDTO): Promise<void> {
        // Perform the INSERT operation for the order
        const insertQuery = 'INSERT INTO Orders (userId, totalPrice, orderedAt, orderStatus) VALUES (?, ?, ?, ?)';
        const insertParams = [userId, order.price, order.orderedAt, order.orderStatus];
        const {insertId} = await executeSql(insertQuery, insertParams);

        // Perform the INSERT operation for each order item
        const orderItemQuery = 'INSERT INTO OrderItem (orderId, productId, quantity, pricePerItem) VALUES (?, ?, ?, ?)';
        const orderItemParams = order.orderItems.map(item => [insertId, item.productId, item.noOfItems, item.price]);
        await Promise.all(orderItemParams.map(params => executeSql(orderItemQuery, params)));
    }
}