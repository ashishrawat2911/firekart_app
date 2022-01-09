package com.ecommerce.app.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.validation.constraints.NotNull;

@ResponseStatus
public class ForbiddenException extends AppException {

    private static final long serialVersionUID = 1L;

    public ForbiddenException(String msg) {
        super(msg);
    }

    @NotNull
    @Override
    public HttpStatus getHttpStatus() {
        return HttpStatus.FORBIDDEN;
    }

}
