export default interface Product {
    id: number;
    image: string;
    name: string;
    description: string;
    unit: string;
    categories: string[];
    currency: string;
    dealOfTheDay: number;
    topProducts: number;
    onSale: number;
    currentPrice: number;
    actualPrice: number;
    quantityPerUnit: number;
    isProductAvailable: number;
    nameSearch: string[];
}