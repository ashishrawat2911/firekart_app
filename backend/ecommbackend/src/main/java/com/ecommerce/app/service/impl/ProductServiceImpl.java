package com.ecommerce.app.service.impl;


import com.ecommerce.app.constants.ApiStatusConstants;
import com.ecommerce.app.enums.Enums;
import com.ecommerce.app.exception.BadRequestException;
import com.ecommerce.app.exception.ResourceNotFoundException;
import com.ecommerce.app.models.entity.ProductEntity;
import com.ecommerce.app.repository.ProductRepository;
import com.ecommerce.app.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductRepository productRepository;

    @Override
    public ProductEntity create(ProductEntity product) {
        ProductEntity productIdExists = findOne(product.getProductId());
        if (productIdExists != null) {

            throw new BadRequestException(ApiStatusConstants.PRODUCT_CODE_AVAILABLE);
        }
        return save(product);
    }

    @Override
    public ProductEntity findOne(String productId) {
        return productRepository.findByProductId(productId);
    }

    @Override
    public Page<ProductEntity> findUpAll(Pageable pageable) {
        return productRepository.findAllByProductStatusOrderByProductIdAsc(Enums.ProductStatusEnum.UP.getCode(), pageable);
    }

    @Override
    public Page<ProductEntity> findAll(Pageable pageable) {
        return productRepository.findAllByOrderByProductId(pageable);
    }


    @Override
    @Transactional
    public void increaseStock(String productId, int amount) {
        ProductEntity productInfo = findOne(productId);
        if (productInfo == null) throw new ResourceNotFoundException(ApiStatusConstants.PRODUCT_NOT_EXIST);

        int update = productInfo.getProductStock() + amount;
        productInfo.setProductStock(update);
        productRepository.save(productInfo);
    }

    @Override
    @Transactional
    public void decreaseStock(String productId, int amount) {
        ProductEntity productInfo = findOne(productId);
        if (productInfo == null) throw new ResourceNotFoundException(ApiStatusConstants.PRODUCT_NOT_EXIST);

        int update = productInfo.getProductStock() - amount;
        if (update <= 0) throw new ResourceNotFoundException(ApiStatusConstants.PRODUCT_NOT_ENOUGH);

        productInfo.setProductStock(update);
        productRepository.save(productInfo);
    }


    @Transactional
    public ProductEntity onSale(String productId, boolean onSale) {
        ProductEntity ProductEntity = findOne(productId);
        if (ProductEntity == null)
            throw new ResourceNotFoundException(ApiStatusConstants.PRODUCT_NOT_EXIST);
//        if (ProductEntity.getProductStatus() == ProductStatusEnum.DOWN.getCode()) {
//            throw new MyException(ApiStatusConstants.PRODUCT_STATUS_ERROR);
//        }
        if (onSale) {
            ProductEntity.setProductStatus(Enums.ProductStatusEnum.UP.getCode());
        } else {
            ProductEntity.setProductStatus(Enums.ProductStatusEnum.DOWN.getCode());
        }
        return productRepository.save(ProductEntity);
    }


    @Override
    public ProductEntity update(ProductEntity ProductEntity) {
        if (ProductEntity.getProductStatus() > 1) {
            throw new ResourceNotFoundException(ApiStatusConstants.PRODUCT_STATUS_ERROR);
        }
        return productRepository.save(ProductEntity);
    }

    @Override
    public ProductEntity save(ProductEntity ProductEntity) {
        return update(ProductEntity);
    }

    @Override
    public String delete(String productId) {
        ProductEntity ProductEntity = findOne(productId);
        if (ProductEntity == null) throw new ResourceNotFoundException(ApiStatusConstants.PRODUCT_NOT_EXIST);
        productRepository.delete(ProductEntity);
        return ApiStatusConstants.PRODUCT_DELETED;
    }
}
