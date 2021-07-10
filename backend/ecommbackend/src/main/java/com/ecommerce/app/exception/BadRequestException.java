package com.ecommerce.app.exception;

import org.springframework.http.HttpStatus;

import javax.validation.constraints.NotNull;

public class BadRequestException extends AppException {

    private static final long serialVersionUID = 1L;

    public BadRequestException(String errMsg) {
        super(errMsg);
    }


    @NotNull
    @Override
    public HttpStatus getHttpStatus() {
        return HttpStatus.BAD_REQUEST;
    }

}