package com.ecommerce.app.service;


import com.ecommerce.app.models.entity.ProductInOrder;
import com.ecommerce.app.models.entity.UserEntity;

public interface ProductInOrderService {
    void update(String itemId, Integer quantity, UserEntity user);

    ProductInOrder findOne(String itemId, UserEntity user);
}
