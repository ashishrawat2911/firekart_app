export default interface OrderResponseDTO {
    id: number;
    price: number;
    orderedAt: string;
    orderStatus: string;
    paymentId: string;
    signature: string;
}
