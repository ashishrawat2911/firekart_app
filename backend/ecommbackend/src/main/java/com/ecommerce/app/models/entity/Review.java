package com.ecommerce.app.models.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EntityListeners(AuditingEntityListener.class)
@DynamicInsert
@DynamicUpdate
@Table(name = "reviews")
@XmlRootElement
public class Review implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "review_id")
    private Integer reviewId;

    @Basic(optional = false)
    @Column(name = "user_id")
    private String userId;

    @Basic(optional = false)
    @Column(name = "product_id")
    private Long productId;

    @Basic(optional = false)
    @Column(name = "company_id")
    private Long companyId;
    
    @Basic(optional = false)
    @Column(name = "rank")
    private int rank;

    @Basic(optional = false)
    @Column(name = "comment")
    private String comment;

    @Basic(optional = false)
    @Column(name = "create_date")
    private Date createDate;

}
