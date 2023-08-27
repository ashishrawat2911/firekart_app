import ProductRepository from "../repository/productRepository";
import ProductResponseDTO from "../models/dto/response/ProductResponseDTO";
import {mapProductToProductResponseDTO} from "../mapper/mapper";
import Product from "../models/entity/Product";

export default class ProductService {
    constructor(private productRepository: ProductRepository) {
    }

    async getAllProducts(page: number, offset: number): Promise<ProductResponseDTO[]> {
        const products = await this.productRepository.getAllProducts(page, offset);
        return products.map(mapProductToProductResponseDTO);
    }

    async getProductDetails(productId: number): Promise<Product | null> {
        return this.productRepository.getProductById(productId);
    }
}