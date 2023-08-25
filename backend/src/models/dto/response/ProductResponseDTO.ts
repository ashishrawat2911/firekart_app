export default interface ProductResponseDTO {
    id: number;
    image: string;
    name: string;
    description: string;
    unit: string;
    categories: string[];
    currency: string;
    dealOfTheDay: boolean;
    topProducts: boolean;
    onSale: boolean;
    currentPrice: number;
    actualPrice: number;
    quantityPerUnit: number;
    isProductAvailable: boolean;
    nameSearch: string[];
}