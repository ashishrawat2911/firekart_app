package com.ecommerce.app.exception;

import org.springframework.http.HttpStatus;

public class AppGenericException extends AppException {

    private final HttpStatus status;

    public AppGenericException(HttpStatus status) {
        this.status = status;
    }

    public AppGenericException(String message, HttpStatus status) {
        super(message);
        this.status = status;
    }

    public AppGenericException(String message, Throwable cause, HttpStatus status) {
        super(message, cause);
        this.status = status;
    }

    public AppGenericException(Throwable cause, HttpStatus status) {
        super(cause);
        this.status = status;
    }

    @Override
    public HttpStatus getHttpStatus() {
        return this.status;
    }
}
