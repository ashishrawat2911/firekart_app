package com.ecommerce.app.models.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.ecommerce.app.models.entity.converter.JpaConverterJson;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EntityListeners(AuditingEntityListener.class)
@DynamicInsert
@DynamicUpdate
@Table(name = "users")
@Entity(name = "users")
@JsonIgnoreProperties(ignoreUnknown = true, value = {"handler", "hibernate_lazy_initializer"})
@XmlRootElement
public class UserEntity extends BaseEntity {
    private static final long serialVersionUID = 1L;

    @Basic(optional = false)
    @Column(name = "user_id")
    private String userId;

    @Column(name = "phone_number")
    private String phoneNumber;

    @Column(name = "name")
    private String name;

    @Column(name = "email")
    private String email;

    @Column(name = "photo")
    private String photo;

    @Column(name = "device_id")
    private String deviceId;

    @Convert(converter = JpaConverterJson.class)
    @Column(name = "user_address")
    List<Address> userAddress;
}
