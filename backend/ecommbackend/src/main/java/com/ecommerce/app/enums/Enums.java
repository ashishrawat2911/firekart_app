package com.ecommerce.app.enums;

import java.util.Objects;

public class Enums {

    public enum BusinessStatus {
        ACTIVE,
        INACTIVE
    }

    public enum RestaurantStatus {
        ACTIVE,
        INACTIVE
    }

    public enum CardsTypes {
        RESTAURANT_LISTING,
        BANNER_LISTING,
        TOP_PLACEHOLDER,
        BOTTOM_RECTANGULAR_BANNER,
        BOTTOM_SQUARE_BANNER
    }

    public enum ProductStatusEnum {
        UP(0, "Available"),
        DOWN(1, "Unavailable");
        private final Integer code;
        private final String message;

        ProductStatusEnum(Integer code, String message) {
            this.code = code;
            this.message = message;
        }

        public String getStatus(Integer code) {

            for (ProductStatusEnum statusEnum : ProductStatusEnum.values()) {
                if (Objects.equals(statusEnum.getCode(), code)) return statusEnum.getMessage();
            }
            return "";
        }

        public Integer getCode() {
            return code;
        }

        public String getMessage() {
            return message;
        }
    }
}


