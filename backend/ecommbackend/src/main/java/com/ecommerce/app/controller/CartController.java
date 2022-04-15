package com.ecommerce.app.controller;

import com.ecommerce.app.models.dto.request.CartItemRequestDTO;
import com.ecommerce.app.models.entity.CartEntity;
import com.ecommerce.app.models.entity.ProductInOrder;
import com.ecommerce.app.models.entity.UserEntity;
import com.ecommerce.app.service.CartService;
import com.ecommerce.app.service.ProductInOrderService;
import com.ecommerce.app.service.ProductService;
import com.ecommerce.app.service.UserService;
import com.ecommerce.app.utils.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Collections;

@CrossOrigin
@RestController
@RequestMapping("/cart")
public class CartController {
    @Autowired
    CartService cartService;
    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;
    @Autowired
    ProductInOrderService productInOrderService;
    @Autowired
    ResponseUtil responseUtil;


    @PostMapping("")
    public ResponseEntity<CartEntity> mergeCart(@RequestBody Collection<ProductInOrder> productInOrders, @RequestParam("phone_number") String phoneNumber) throws Exception {
        UserEntity user = userService.getUserByPhoneNumber(phoneNumber);

        cartService.mergeLocalCart(productInOrders, user);
        return responseUtil.successResponse(cartService.getCart(user));
    }

    @GetMapping("")
    public ResponseEntity getCart(@RequestParam("phone_number") String phoneNumber) throws Exception {
        UserEntity user = userService.getUserByPhoneNumber(phoneNumber);
        return responseUtil.successResponse(cartService.getCart(user));
    }


    @PostMapping("/add")
    public ResponseEntity addToCart(@RequestBody CartItemRequestDTO form, @RequestParam("phone_number") String phoneNumber) {
        var productInfo = productService.findOne(form.getProductId());
        try {
            UserEntity user = userService.getUserByPhoneNumber(phoneNumber);
            cartService.mergeLocalCart(Collections.singleton(new ProductInOrder(productInfo, form.getQuantity())), user);
        } catch (Exception e) {
            return responseUtil.emptySuccessResponse();
        }
        return responseUtil.emptySuccessResponse();
    }

    @PutMapping("/{itemId}")
    public ResponseEntity modifyItem(@PathVariable("itemId") String itemId, @RequestBody Integer quantity, @RequestParam("phone_number") String phoneNumber) throws Exception {
        UserEntity user = userService.getUserByPhoneNumber(phoneNumber);
        productInOrderService.update(itemId, quantity, user);
        return responseUtil.successResponse(productInOrderService.findOne(itemId, user));
    }

    @DeleteMapping("/{itemId}")
    public ResponseEntity deleteItem(@PathVariable("itemId") String itemId, @RequestParam("phone_number") String phoneNumber) throws Exception {
        UserEntity user = userService.getUserByPhoneNumber(phoneNumber);
        cartService.delete(itemId, user);
        return responseUtil.emptySuccessResponse();
        // flush memory into DB
    }


    @PostMapping("/checkout")
    public ResponseEntity checkout(@RequestParam("phone_number") String phoneNumber) throws Exception {
        UserEntity user = userService.getUserByPhoneNumber(phoneNumber);
        cartService.checkout(user);
        return responseUtil.emptySuccessResponse();
    }
}