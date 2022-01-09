package com.ecommerce.app.exception;

import org.springframework.http.HttpStatus;

public class InvalidStateException extends AppException {

    private static final long serialVersionUID = 1L;

    public InvalidStateException(String msg) {
        super(msg);
    }


    @Override
    public HttpStatus getHttpStatus() {
        return HttpStatus.EXPECTATION_FAILED;
    }
}