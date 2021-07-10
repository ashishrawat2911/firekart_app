package com.ecommerce.app.repository;

import com.ecommerce.app.models.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<UserEntity, String> {
    @Query(value = "select * from users where phone_number = :phoneNumber", nativeQuery = true)
    UserEntity findByPhoneNumber(@Param("phoneNumber") String phoneNumber);
}
