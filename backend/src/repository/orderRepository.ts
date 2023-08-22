import Order from "../models/Order";
import {executeSql} from "../database/database";

export default class OrderRepository {
    async getAllOrdersForUserId(userId: number): Promise<Order[]> {
        const query = 'SELECT * FROM Orders WHERE userId = ?';
        const [rows] = await executeSql(query, [userId]);
        return rows;
    }
}