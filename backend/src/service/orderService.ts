import OrderRepository from "../repository/orderRepository";
import OrderResponseDTO from "../models/dto/response/OrderResponseDTO";
import OrderRequestDTO from "../models/dto/request/OrderRequestDTO";
import {orderEntityToResponseDTO} from "../mapper/mapper";

export default class OrderService {
    constructor(private orderRepository: OrderRepository) {
    }

    async getAllOrders(userId: number): Promise<OrderResponseDTO[]> {
        const orders = await this.orderRepository.getAllOrdersForUserId(userId);
        return orders.map(orderEntityToResponseDTO);
    }

    async placeOrder(userId: number, order: OrderRequestDTO): Promise<void> {
        return this.orderRepository.addOrder(userId, order)
    }
}