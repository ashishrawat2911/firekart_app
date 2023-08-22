export default interface OrderItem {
    id: number;
    productId: string;
    image: string;
    name: string;
    unit: string;
    currency: string;
    price: number;
    noOfItems: number;
}