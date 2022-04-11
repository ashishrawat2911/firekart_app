package com.ecommerce.app.models.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sun.istack.NotNull;
import lombok.*;


import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;

import javax.validation.constraints.Min;
import java.math.BigDecimal;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor


@Data
public class ProductDTO {
    private String productId;
    @NotNull
    private String productName;
    @NotNull
    private BigDecimal productPrice;
    @NotNull
    @Min(0)
    private Integer productStock;
    private String productDescription;
    private String productIcon;
    @ColumnDefault("0")
    private Integer productStatus;
}
