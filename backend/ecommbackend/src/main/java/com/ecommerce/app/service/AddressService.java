package com.ecommerce.app.service;

import com.ecommerce.app.models.entity.Address;

import java.util.List;

public interface AddressService {
    List<Address> getAddress(String phoneNumber) throws Exception;

    List<Address> addAddress(String phoneNumber, Address address) throws Exception;

    String setDefaultAddress(String addressId, String phoneNumber) throws Exception;
}
