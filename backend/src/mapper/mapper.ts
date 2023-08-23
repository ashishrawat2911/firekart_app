import Order from "../models/entity/Order";
import OrderResponseDTO from "../models/dto/response/OrderResponseDTO";

export function orderEntityToResponseDTO(order: Order): OrderResponseDTO {
    return {
        id: order.id,
        price: order.totalPrice,
        orderedAt: order.orderedAt,
        orderStatus: order.orderStatus,
    }
}