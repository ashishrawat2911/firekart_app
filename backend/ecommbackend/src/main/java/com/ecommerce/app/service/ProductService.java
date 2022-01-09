package com.ecommerce.app.service;


import com.ecommerce.app.models.entity.ProductEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ProductService {

    ProductEntity create(ProductEntity productInfo);

    ProductEntity findOne(String productId);

    Page<ProductEntity> findUpAll(Pageable pageable);

    Page<ProductEntity> findAll(Pageable pageable);

    ProductEntity onSale(String productId, boolean onSale);

    // increase stock
    void increaseStock(String productId, int amount);

    //decrease stock
    void decreaseStock(String productId, int amount);

    ProductEntity update(ProductEntity productInfo);

    ProductEntity save(ProductEntity productInfo);

    String delete(String productId);
}
