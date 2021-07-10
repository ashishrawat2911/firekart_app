package com.ecommerce.app.utils;

import org.apache.commons.lang3.RandomStringUtils;

import java.text.DecimalFormat;
import java.util.UUID;


public class KeyGenerator {

    public static DecimalFormat DF_7 = new DecimalFormat("0000000");
    public static DecimalFormat DF_6 = new DecimalFormat("000000");


    public static String generateRandomId() {
        return UUID.randomUUID().toString();
    }


    public static String generateRestaurantId(long id) {
        return "RES" + RandomStringUtils.randomAlphanumeric(6).toUpperCase() + DF_7.format(id);
    }

    public static String generateBusinessId(long id) {
        return "BU" + RandomStringUtils.randomAlphanumeric(6).toUpperCase() + DF_7.format(id);
    }
}
