package com.ecommerce.app.utils;


public class ResDataCopyUtils {

    public static final String ZomatoRestaurantTableName = "Zomato_restaurant";
    public static final String ZomatoRestaurantTableCurrencyCode = "INR";

    public static String generateParentTableId(String tableName, Long tableId){
        return tableName+"::"+tableId;
    }
}
