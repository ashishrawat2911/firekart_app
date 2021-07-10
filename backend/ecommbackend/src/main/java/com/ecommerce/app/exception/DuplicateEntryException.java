package com.ecommerce.app.exception;

import org.springframework.http.HttpStatus;

import javax.validation.constraints.NotNull;

public class DuplicateEntryException extends AppException {

    private static final long serialVersionUID = 1L;

    public DuplicateEntryException(String msg) {
        super(msg);
    }


    @NotNull
    @Override
    public HttpStatus getHttpStatus() {
        return HttpStatus.EXPECTATION_FAILED;
    }
}
