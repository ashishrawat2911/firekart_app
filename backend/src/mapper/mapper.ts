import Order from "../models/entity/Order";
import OrderResponseDTO from "../models/dto/response/OrderResponseDTO";
import ProductResponseDTO from "../models/dto/response/ProductResponseDTO";
import Product from "../models/entity/Product";

export function orderEntityToResponseDTO(order: Order): OrderResponseDTO {
    return {
        paymentId: order.paymentId, signature: order.signature,
        id: order.id,
        price: order.totalPrice,
        orderedAt: order.orderedAt,
        orderStatus: order.orderStatus
    }
}
export
function mapProductToProductResponseDTO(product: Product): ProductResponseDTO {
    return {
        id: product.id,
        image: product.image,
        name: product.name,
        description: product.description,
        unit: product.unit,
        categories: product.categories,
        currency: product.currency,
        dealOfTheDay: product.dealOfTheDay === 1,
        topProducts: product.topProducts === 1,
        onSale: product.onSale === 1,
        currentPrice: product.currentPrice,
        actualPrice: product.actualPrice,
        quantityPerUnit: product.quantityPerUnit,
        isProductAvailable: product.isProductAvailable === 1,
        nameSearch: product.nameSearch,
    };
}

