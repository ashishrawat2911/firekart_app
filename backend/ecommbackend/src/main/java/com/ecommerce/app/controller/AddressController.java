package com.ecommerce.app.controller;

import com.ecommerce.app.models.entity.Address;
import com.ecommerce.app.service.AddressService;
import com.ecommerce.app.utils.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@EnableAutoConfiguration
@RestController()
@RequestMapping("/user/address")
public class AddressController {
    @Autowired
    AddressService addressService;
    @Autowired
    ResponseUtil responseUtil;

    @RequestMapping(method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity getAllAddress(@RequestParam("phone_number") String phoneNumber)
            throws Exception {
        return responseUtil.successResponse(addressService.getAddress(phoneNumber));
    }

    @PostMapping(produces = "application/json")
    public ResponseEntity addAddress(@RequestBody Address address, @RequestParam("phone_number") String phoneNumber)
            throws Exception {
        return responseUtil.successResponse(addressService.addAddress(phoneNumber, address));
    }

    @PostMapping(value = "/defaultAddress", produces = "application/json")
    public ResponseEntity setDefaultAddress(@RequestParam("address_id") String addressId, @RequestParam("phone_number") String phoneNumber)
            throws Exception {
        return responseUtil.successResponse(addressService.setDefaultAddress(addressId,phoneNumber));
    }
}
