package com.ecommerce.app.models.dto.request;

import lombok.Data;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Data
public class CartItemRequestDTO {
    @Min(value = 1)
    private Integer quantity;
    @NotNull
    private String productId;
}
