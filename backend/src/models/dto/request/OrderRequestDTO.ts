import OrderItemRequestDTO from "./OrderItemRequestDTO";

export default interface OrderRequestDTO {
    id: number;
    price: number;
    orderItems: OrderItemRequestDTO[];
    orderedAt: string;
    orderStatus: string;
    currency: string;
    paymentId: string;
    signature: string;
}
