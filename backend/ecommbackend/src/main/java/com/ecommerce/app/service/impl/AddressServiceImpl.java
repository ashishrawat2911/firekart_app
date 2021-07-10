package com.ecommerce.app.service.impl;

import com.ecommerce.app.constants.ApiStatusConstants;
import com.ecommerce.app.exception.ResourceNotFoundException;
import com.ecommerce.app.models.entity.Address;
import com.ecommerce.app.models.entity.UserEntity;
import com.ecommerce.app.service.AddressService;
import com.ecommerce.app.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class AddressServiceImpl implements AddressService {

    @Autowired
    UserService userService;

    @Override
    public List<Address> getAddress(String phoneNumber) throws Exception {
        UserEntity user = userService.getUserByPhoneNumber(phoneNumber);
        if (user.getUserAddress() == null) {
            throw new ResourceNotFoundException(ApiStatusConstants.ADDRESS_NOT_FOUND);
        }
        return user.getUserAddress();
    }

    @Override
    public List<Address> addAddress(String phoneNumber, Address address) throws Exception {
        List<Address> addresses;
        UserEntity user = userService.getUserByPhoneNumber(phoneNumber);
        if (user.getUserAddress() == null) {
            addresses = new ArrayList<Address>();
        } else {
            addresses = user.getUserAddress();
        }
        addresses.add(address);
        user.setUserAddress(addresses);
        userService.save(user);
        return addresses;
    }

    @Override
    public String setDefaultAddress(String addressId, String phoneNumber) throws Exception {
        List<Address> addresses;
        UserEntity user = userService.getUserByPhoneNumber(phoneNumber);
        if (user.getUserAddress() == null) {
            throw new ResourceNotFoundException(ApiStatusConstants.ADDRESS_NOT_FOUND);
        } else {
            addresses = user.getUserAddress();
        }
        for (Address address : addresses) {
            address.setDefault(address.getId().equals(addressId));
        }
        user.setUserAddress(addresses);
        userService.save(user);
        return ApiStatusConstants.DEFAULT_ADDRESS_SET;
    }
}
