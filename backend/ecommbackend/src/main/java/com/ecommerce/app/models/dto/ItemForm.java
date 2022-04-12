package com.ecommerce.app.models.dto;

import lombok.Data;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Data
public class ItemForm {
    @Min(value = 1)
    private Integer quantity;
    @NotNull
    private String productId;
}
