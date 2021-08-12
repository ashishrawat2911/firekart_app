package com.ecommerce.app.controller;

import com.ecommerce.app.service.CategoryService;
import com.ecommerce.app.utils.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableAutoConfiguration
@RequestMapping(value = "/category")
public class CategoryController {
    @Autowired
    CategoryService categoryService;
    @Autowired
    ResponseUtil responseUtil;


    @RequestMapping(value = "getAllCategories", method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity<?> getAllAddress()
            throws Exception {
        return responseUtil.successResponse(categoryService.getAllCategories());
    }
}
