import ProductRepository from "../repository/productRepository";
import Product from "../models/Product";

export default class ProductService {
    constructor(private productRepository: ProductRepository) {
    }

    async getAllProducts(page: number, offset: number): Promise<Product[]> {
        return this.productRepository.getAllProducts(page, offset);
    }
}