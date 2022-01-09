package com.ecommerce.app.models.base;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * Base Response for all APIs
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BaseErrorResponse<T> implements Serializable {

    /**
     * status
     */
    private String status;

    /**
     * Response Entity
     */
    private T error;


}
