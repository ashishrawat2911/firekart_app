package com.ecommerce.app.service;


import com.ecommerce.app.models.dto.OTPSentResponse;
import com.ecommerce.app.models.dto.UserResponseDTO;
import com.ecommerce.app.models.dto.request.UserDetailUpdateRequestDTO;
import com.ecommerce.app.models.dto.response.UserFileUploadResponseDTO;
import com.ecommerce.app.models.entity.Address;
import com.ecommerce.app.models.entity.UserEntity;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface UserService {

    UserResponseDTO verifyOTP(String phoneNumber, String otp, String deviceId) throws Exception;

    void saveAccountVerification(String phoneNumber, String otp) throws Exception;

    UserEntity getUserByPhoneNumber(String phone) throws Exception;

    UserEntity save(UserEntity users);

    String logout(String phoneNumber) throws Exception;

    UserResponseDTO editUser(String phoneNumber, UserDetailUpdateRequestDTO detailUpdateRequest) throws Exception;

    UserFileUploadResponseDTO uploadUserPhoto(MultipartFile artifact, String phoneNumber) throws Exception;

    OTPSentResponse login(String phoneNumber) throws Exception;

    }
