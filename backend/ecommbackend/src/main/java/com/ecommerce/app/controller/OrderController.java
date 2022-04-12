package com.ecommerce.app.controller;


import com.ecommerce.app.models.entity.OrderMain;
import com.ecommerce.app.models.entity.ProductInOrder;
import com.ecommerce.app.models.entity.UserEntity;
import com.ecommerce.app.service.OrderService;
import com.ecommerce.app.service.UserService;
import com.ecommerce.app.utils.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;


@RestController
@CrossOrigin
public class OrderController {
    @Autowired
    OrderService orderService;
    @Autowired
    UserService userService;

    @Autowired
    ResponseUtil responseUtil;

    @GetMapping("/order")
    public ResponseEntity<Page<OrderMain>> orderList(@RequestParam(value = "phone_number") String phoneNumber,
                                                     @RequestParam(value = "page", defaultValue = "1") Integer page,
                                                     @RequestParam(value = "size", defaultValue = "10") Integer size) throws Exception {
        PageRequest request = PageRequest.of(page - 1, size);
        Page<OrderMain> orderPage;
        UserEntity user = userService.getUserByPhoneNumber(phoneNumber);
        orderPage = orderService.findByBuyerPhone(user.getName(), request);
        return responseUtil.successResponse(orderPage);
    }


    @PatchMapping("/order/cancel/{id}")
    public ResponseEntity<OrderMain> cancel(@PathVariable("id") Long orderId) {
        OrderMain orderMain = orderService.findOne(orderId);
        return responseUtil.successResponse(orderService.cancel(orderId));
    }

    @PatchMapping("/order/finish/{id}")
    public ResponseEntity<OrderMain> finish(@PathVariable("id") Long orderId) {
        return responseUtil.successResponse(orderService.finish(orderId));
    }

    @GetMapping("/order/{id}")
    public ResponseEntity show(@PathVariable("id") Long orderId) {
        OrderMain orderMain = orderService.findOne(orderId);
        Collection<ProductInOrder> items = orderMain.getProducts();
        return responseUtil.successResponse(orderMain);
    }
}
