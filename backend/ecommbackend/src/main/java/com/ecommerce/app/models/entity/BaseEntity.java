package com.ecommerce.app.models.entity;

import com.ecommerce.app.utils.DateUtils;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;


@MappedSuperclass
@Data
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class BaseEntity {

    @Id
    @GenericGenerator(name = "native", strategy = "native")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    protected Long id;

    @Column(name = "created_at")
    private String createdAt;

    @Column(name = "updated_at")
    private String updatedAt;

    public BaseEntity() {
        this.createdAt = DateUtils.getDateTimeUTC();
        this.updatedAt = DateUtils.getDateTimeUTC();
    }
}
