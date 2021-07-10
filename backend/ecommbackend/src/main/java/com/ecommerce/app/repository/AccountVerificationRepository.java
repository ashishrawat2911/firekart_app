package com.ecommerce.app.repository;

import com.ecommerce.app.models.entity.AccountVerification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountVerificationRepository extends JpaRepository<AccountVerification, Long> {
//    @Query(value = "select otp from acct_verification where phone_number=:phone_number and is_deleted=0 and is_expired=0 order by updated_at DESC limit 1", nativeQuery = true)
    @Query(value = "select otp from acct_verification where phone_number=:phone_number and is_deleted=0 and is_expired=0 order by id DESC limit 1", nativeQuery = true)
    int getOTPByPhoneNumber(@Param("phone_number") String phoneNumber);
}
