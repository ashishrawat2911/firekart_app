export default interface Cart {
    id: number;
    productId: string;
    image: string;
    name: string;
    unit: string;
    currency: string;
    currentPrice: number;
    quantityPerUnit: number;
    quantity: number;
}
