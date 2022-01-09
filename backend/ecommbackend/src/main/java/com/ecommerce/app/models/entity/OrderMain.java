package com.ecommerce.app.models.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@DynamicUpdate
public class OrderMain implements Serializable {
    private static final long serialVersionUID = -3819883511505235030L;

    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long orderId;

    @OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY,
            mappedBy = "orderMain")
    private Set<ProductInOrder> products = new HashSet<>();

    @NotNull
    private String buyerEmail;

    @NotNull
    private String buyerName;

    @NotNull
    private String buyerPhone;

    @NotNull
    private String buyerAddress;

    @NotNull
    private BigDecimal orderAmount;

    @NotNull
    @ColumnDefault("0")
    private Integer orderStatus;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;

    public OrderMain(UserEntity buyer) {
        this.buyerEmail = buyer.getEmail();
        this.buyerName = buyer.getName();
        this.buyerPhone = buyer.getPhoneNumber();
//        this.buyerAddress = buyer.getAddress();
//        this.orderAmount = buyer.getCart().getProducts().stream().map(item -> item.getProductPrice().multiply(new BigDecimal(item.getCount())))
//                .reduce(BigDecimal::add)
//                .orElse(new BigDecimal(0));
        this.orderStatus = 0;
    }
}
