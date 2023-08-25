export default interface Order {
    id: number;
    userId: number;
    totalPrice: number;
    orderedAt: string;
    orderStatus: string;
    paymentId: string;
    signature: string;
}

