package com.ecommerce.app.enums;


public enum OrderStatusEnum {
    NEW(0, "New OrderMain"),
    FINISHED(1, "Finished"),
    CANCELED(2, "Canceled");

    private final int code;
    private final String msg;

    OrderStatusEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return msg;
    }
}
