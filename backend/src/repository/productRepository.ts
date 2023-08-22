import Product from "../models/Product";
import {executeSql} from "../database/database";

export default class ProductRepository {
    async getAllProducts(offset: number, pageSize: number): Promise<Product[]> {
        const query = 'SELECT * FROM Product LIMIT ? OFFSET ?';
        return await executeSql(query, [pageSize, offset]);
    }

    async add(): Promise<void> {
        const insertQuery = `
            INSERT INTO Product (productId, image, name, description, unit, currency,
                                 dealOfTheDay, topProducts, onSale, currentPrice, actualPrice,
                                 quantityPerUnit, isProductAvailable)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
        await executeSql(insertQuery, [
            newProduct.productId, newProduct.image, newProduct.name,
            newProduct.description, newProduct.unit, newProduct.currency,
            newProduct.dealOfTheDay, newProduct.topProducts, newProduct.onSale,
            newProduct.currentPrice, newProduct.actualPrice,
            newProduct.quantityPerUnit, newProduct.isProductAvailable
        ]);
    }
}

const newProduct = {
    productId: 'P002',
    image: 'product2.jpg',
    name: 'Product 2',
    description: 'Description of Product 2',
    unit: 'piece',
    currency: 'USD',
    dealOfTheDay: false,
    topProducts: true,
    onSale: true,
    currentPrice: 29.99,
    actualPrice: 35.00,
    quantityPerUnit: 1.0,
    isProductAvailable: true,
};
