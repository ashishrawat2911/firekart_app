import Order from "../models/entity/Order";
import OrderResponseDTO from "../models/dto/response/OrderResponseDTO";
import ProductResponseDTO from "../models/dto/response/ProductResponseDTO";
import Product from "../models/entity/Product";
import Address from "../models/entity/Address";
import AddressResponseDTO from "../models/dto/response/AddressResponseDTO";

export function orderEntityToResponseDTO(order: Order): OrderResponseDTO {
    return {
        paymentId: order.paymentId, signature: order.signature,
        id: order.id,
        price: order.totalPrice,
        orderedAt: order.orderedAt,
        orderStatus: order.orderStatus
    }
}

export function mapProductToProductResponseDTO(product: Product): ProductResponseDTO {
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

export function mapAddressToAddressResponseDTO(address: Address, userId: number): AddressResponseDTO {
    return {
        id: address.id,
        userId: userId,
        name: address.name,
        pincode: address.pincode,
        address: address.address,
        city: address.city,
        state: address.state,
        phoneNumber: address.phoneNumber,
        isDefault: address.isDefault === 1
    };
}

