package com.ecommerce.app.service;

import com.ecommerce.app.models.entity.CartEntity;
import com.ecommerce.app.models.entity.ProductInOrder;
import com.ecommerce.app.models.entity.UserEntity;

import java.util.Collection;

public interface CartService {
    CartEntity getCart(UserEntity user);

    void mergeLocalCart(Collection<ProductInOrder> productInOrders, UserEntity user);

    void delete(String itemId, UserEntity user);

    void checkout(UserEntity user);
}
