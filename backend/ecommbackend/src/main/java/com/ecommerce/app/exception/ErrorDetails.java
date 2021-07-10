package com.ecommerce.app.exception;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class ErrorDetails implements Serializable {

    private String timestamp;

    private String displayMessage;

    private Integer responseCode;

    private String errorCode;

    private String message;

}
