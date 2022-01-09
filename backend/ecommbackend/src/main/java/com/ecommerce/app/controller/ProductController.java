package com.ecommerce.app.controller;

import com.ecommerce.app.constants.ApiStatusConstants;
import com.ecommerce.app.exception.ResourceNotFoundException;
import com.ecommerce.app.models.entity.ProductEntity;
import com.ecommerce.app.service.ProductService;
import com.ecommerce.app.utils.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@CrossOrigin
@RestController
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductService productService;

    @Autowired
    ResponseUtil responseUtil;

    @GetMapping("/")
    public ResponseEntity findAll(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                  @RequestParam(value = "size", defaultValue = "3") Integer size) {
        PageRequest request = PageRequest.of(page - 1, size);
        return responseUtil.successResponse(productService.findAll(request));
    }

    @GetMapping("/{productId}")
    public ResponseEntity showOne(@PathVariable("productId") String productId) {
        ProductEntity ProductEntity = productService.findOne(productId);
        return responseUtil.successResponse(ProductEntity);
    }

    @PostMapping("/product/new")
    public ResponseEntity create(@Valid @RequestBody ProductEntity product,
                                 BindingResult bindingResult) {
        return responseUtil.successResponse(productService.create(product));
    }

    @PutMapping("/{id}/edit")
    public ResponseEntity edit(@PathVariable("id") String productId,
                               @Valid @RequestBody ProductEntity product,
                               BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            //TODO Add  return new BadRequestException(bindingResult);
            return ResponseEntity.badRequest().body(bindingResult);
        }
        if (!productId.equals(product.getProductId())) {
            throw new ResourceNotFoundException(ApiStatusConstants.Id_Not_Matched);
        }
        return responseUtil.successResponse(productService.update(product));
    }

    @DeleteMapping("{id}/delete")
    public ResponseEntity delete(@PathVariable("id") String productId) {
        return responseUtil.successResponse(productService.delete(productId));
    }

}
