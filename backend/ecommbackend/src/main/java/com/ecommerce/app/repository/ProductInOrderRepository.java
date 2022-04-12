package com.ecommerce.app.repository;

import com.ecommerce.app.models.entity.ProductInOrder;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ProductInOrderRepository extends JpaRepository<ProductInOrder, Long> {

}
