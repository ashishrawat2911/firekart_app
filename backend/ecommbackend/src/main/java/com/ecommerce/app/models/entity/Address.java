package com.ecommerce.app.models.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
public class Address {
    @GeneratedValue
    @JsonIgnore
    @Id
    String id;
    String name;
    String pincode;
    String address;
    String addressTwo;
    String email;
    String city;
    String state;
    String phoneNumber;
    boolean isDefault;
}
