package com.ecommerce.app.exception;

import org.springframework.http.HttpStatus;

import javax.validation.constraints.NotNull;

public class InternalServerException extends AppException {

    private static final long serialVersionUID = 1L;

    public InternalServerException(String s) {
        super(s);
    }

    @NotNull
    @Override
    public HttpStatus getHttpStatus() {
        return HttpStatus.INTERNAL_SERVER_ERROR;
    }
}
