package com.ecommerce.app.models.base;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmptyBaseResponse<T> implements Serializable {

    /**
     * status
     */
    private String status;


}
