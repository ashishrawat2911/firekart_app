package com.ecommerce.app.models.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Data
@NoArgsConstructor
public class ProductInOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    @JsonIgnore
    private CartEntity cart;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_id")
    @JsonIgnore
    private OrderMain orderMain;

    @NotNull
    private String productId;
    @NotNull
    private String productName;

    @NotNull
    private String productDescription;

    private String productIcon;

    @NotNull
    private BigDecimal productPrice;

    @Min(0)
    private Integer productStock;

    @Min(1)
    private Integer count;


    public ProductInOrder(ProductEntity productInfo, Integer quantity) {
        this.productId = productInfo.getProductId();
        this.productName = productInfo.getProductName();
        this.productDescription = productInfo.getProductDescription();
        this.productIcon = productInfo.getProductIcon();
        this.productPrice = productInfo.getProductPrice();
        this.productStock = productInfo.getProductStock();
        this.count = quantity;
    }

    @Override
    public String toString() {
        return "ProductInOrder{" +
                "id=" + id +
                ", productId='" + productId + '\'' +
                ", productName='" + productName + '\'' +
                ", productDescription='" + productDescription + '\'' +
                ", productIcon='" + productIcon + '\'' +
                ", productPrice=" + productPrice +
                ", productStock=" + productStock +
                ", count=" + count +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        ProductInOrder that = (ProductInOrder) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(productId, that.productId) &&
                Objects.equals(productName, that.productName) &&
                Objects.equals(productDescription, that.productDescription) &&
                Objects.equals(productIcon, that.productIcon) &&
                Objects.equals(productPrice, that.productPrice);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), id, productId, productName, productDescription, productIcon, productPrice);
    }
}
