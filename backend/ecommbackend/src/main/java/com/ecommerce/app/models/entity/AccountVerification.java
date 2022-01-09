package com.ecommerce.app.models.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;

@Data
@Entity(name = "acct_verification")
@Table(name = "acct_verification")
@EntityListeners(AuditingEntityListener.class)
@JsonIgnoreProperties(ignoreUnknown = true, value = {"handler", "hibernate_lazy_initializer"})
public class AccountVerification {
    @Id
    @GeneratedValue
    @Column(name = "id", unique = true)
    private int id;
    @Column(name = "phone_number")
    private String phoneNumber;
    @Column(name = "otp")
    private String otp;
    @Column(name = "incorrect_attempts")
    private int incorrectAttempts;
    @Column(name = "blocked_till_ts")
    private String blockedTillTs;
    @Column(name = "verify_status")
    private boolean verifyStatus;
    @Column(name = "is_deleted")
    private int isDeleted;
    @Column(name = "is_expired")
    private int isExpired;
    @Column(name = "max_resend_attempts")
    private int maxResendAttempts;
}






