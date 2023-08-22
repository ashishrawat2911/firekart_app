import Address from "./Address";
import OrderItem from "./OrderItem";

export default interface Order {
    id: number;
    price: number;
    orderItems: OrderItem[];
    orderedAt: string;
    orderStatus: string;
    currency: string;
    paymentId: string;
    signature: string;
    orderAddress: Address;
}
