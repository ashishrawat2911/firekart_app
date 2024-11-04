import OrderRepository from "../repository/orderRepository";
import OrderResponseDTO from "../models/dto/response/OrderResponseDTO";
import OrderRequestDTO from "../models/dto/request/OrderRequestDTO";
import {orderEntityToResponseDTO} from "../mapper/mapper";
import {cartService, fcmService, userService} from "../di/di";

export default class OrderService {
    constructor(private orderRepository: OrderRepository) {
    }

    async getAllOrders(userId: number): Promise<OrderResponseDTO[]> {
        const orders = await this.orderRepository.getAllOrdersForUserId(userId);
        return orders.map(orderEntityToResponseDTO);
    }

    async placeOrder(userId: number, order: OrderRequestDTO): Promise<void> {
        await cartService.clearCart(userId);
        await this.orderRepository.addOrder(userId, order)
        const token = await userService.getDeviceToken(userId);
        console.log(token)
        if (!token) {
            await fcmService.sendMessage("Order Placed", "Order Successfully placed", token!);
        }
    }
}