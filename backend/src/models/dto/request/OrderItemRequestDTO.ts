export default interface OrderItemRequestDTO {
    productId: number;
    image: string;
    name: string;
    unit: string;
    currency: string;
    price: number;
    noOfItems: number;
}