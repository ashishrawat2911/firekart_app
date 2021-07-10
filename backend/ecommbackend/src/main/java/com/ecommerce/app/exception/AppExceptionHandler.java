package com.ecommerce.app.exception;

import com.ecommerce.app.constants.NetworkConstants;
import com.google.common.base.Throwables;
import com.ecommerce.app.models.base.BaseErrorResponse;
import com.ecommerce.app.utils.AppUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.support.MissingServletRequestPartException;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.Date;

@ControllerAdvice
@RestController
public class AppExceptionHandler extends ResponseEntityExceptionHandler {


    private ErrorDetails getErrorDetails(String displayMsg, HttpStatus status, String appErrorMsg) {
        return ErrorDetails.builder()
                .timestamp(AppUtils.getDateWithTimeAsString(new Date()))
                .responseCode(status.value())
                .displayMessage(displayMsg)
                .errorCode(status.name())
                .message(status.getReasonPhrase())
                .build();
    }

    @ExceptionHandler(Exception.class)
    public final ResponseEntity<BaseErrorResponse<ErrorDetails>> handleGenericException(Exception exception, WebRequest request) {

        ErrorDetails errorDetails = getErrorDetails(Throwables.getRootCause(exception).getMessage(), HttpStatus.INTERNAL_SERVER_ERROR, Throwables.getStackTraceAsString(exception));
        return new ResponseEntity<>(
                new BaseErrorResponse<>(
                        NetworkConstants.RESPONSE_STATUS.failure.name(),
                        errorDetails
                ), HttpStatus.INTERNAL_SERVER_ERROR);
    }


    @ExceptionHandler(AppException.class)
    public final ResponseEntity<BaseErrorResponse<ErrorDetails>> handleFuryException(
            AppException furyException,
            WebRequest request) {

        ErrorDetails errorDetails = getErrorDetails(furyException.getMessage(), furyException.getHttpStatus(), furyException.getMessage());
        return new ResponseEntity<>(
                new BaseErrorResponse<>(
                        NetworkConstants.RESPONSE_STATUS.failure.name(),
                        errorDetails),
                furyException.getHttpStatus());
    }


    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex,
            HttpHeaders headers,
            HttpStatus status,
            WebRequest request) {
        StringBuilder sb = new StringBuilder();
        for (ObjectError error : ex.getBindingResult().getAllErrors()) {
            sb.append(error.getDefaultMessage());
            sb.append(";");
        }

        ErrorDetails error = getErrorDetails(sb.toString(), status, ex.getClass().getCanonicalName());
        return new ResponseEntity<>(
                new BaseErrorResponse<>(
                        NetworkConstants.RESPONSE_STATUS.failure.name(),
                        error
                ),
                HttpStatus.BAD_REQUEST);
    }

    @Override
    protected ResponseEntity<Object> handleMissingServletRequestPart(
            MissingServletRequestPartException ex,
            HttpHeaders headers,
            HttpStatus status,
            WebRequest request) {

        ErrorDetails error = getErrorDetails(ex.getMessage(), status, ex.getClass().getCanonicalName());
        return new ResponseEntity<>(
                new BaseErrorResponse<>(
                        NetworkConstants.RESPONSE_STATUS.failure.name(),
                        error
                ),
                status);
    }

    @Override
    protected ResponseEntity<Object> handleMissingServletRequestParameter(
            MissingServletRequestParameterException ex,
            HttpHeaders headers,
            HttpStatus status,
            WebRequest request) {

        ErrorDetails error = getErrorDetails(ex.getMessage(), status, ex.getClass().getCanonicalName());
        return new ResponseEntity<>(
                new BaseErrorResponse<>(
                        NetworkConstants.RESPONSE_STATUS.failure.name(),
                        error
                ),
                status);
    }

}
