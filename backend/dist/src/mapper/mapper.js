"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.mapAddressToAddressResponseDTO = exports.mapProductToProductResponseDTO = exports.orderEntityToResponseDTO = void 0;
function orderEntityToResponseDTO(order) {
    return {
        paymentId: order.paymentId, signature: order.signature,
        id: order.id,
        price: order.totalPrice,
        orderedAt: order.orderedAt,
        orderStatus: order.orderStatus
    };
}
exports.orderEntityToResponseDTO = orderEntityToResponseDTO;
function mapProductToProductResponseDTO(product) {
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
exports.mapProductToProductResponseDTO = mapProductToProductResponseDTO;
function mapAddressToAddressResponseDTO(address, userId) {
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
exports.mapAddressToAddressResponseDTO = mapAddressToAddressResponseDTO;
