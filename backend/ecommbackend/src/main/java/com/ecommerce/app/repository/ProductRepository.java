package com.ecommerce.app.repository;

import com.ecommerce.app.models.entity.ProductEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, String> {
    ProductEntity findByProductId(String id);
    // onsale product
    Page<ProductEntity> findAllByProductStatusOrderByProductIdAsc(Integer productStatus, Pageable pageable);

    Page<ProductEntity> findAllByOrderByProductId(Pageable pageable);
}
