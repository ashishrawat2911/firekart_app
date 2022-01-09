package com.ecommerce.app.repository;

import com.ecommerce.app.models.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, String> {
    @Query(value = "select * from users where phone_number = :phoneNumber", nativeQuery = true)
    UserEntity findByPhoneNumber(@Param("phoneNumber") String phoneNumber);
    UserEntity findByEmail(String email);
}
