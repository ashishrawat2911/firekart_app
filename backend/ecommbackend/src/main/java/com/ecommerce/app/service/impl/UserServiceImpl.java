package com.ecommerce.app.service.impl;

import com.ecommerce.app.constants.ApiStatusConstants;
import com.ecommerce.app.exception.AppException;
import com.ecommerce.app.exception.ResourceNotFoundException;
import com.ecommerce.app.models.dto.OTPSentResponse;
import com.ecommerce.app.models.dto.UserResponseDTO;
import com.ecommerce.app.models.dto.request.UserDetailUpdateRequestDTO;
import com.ecommerce.app.models.dto.response.UserFileUploadResponseDTO;
import com.ecommerce.app.models.entity.AccountVerification;
import com.ecommerce.app.models.entity.Address;
import com.ecommerce.app.models.entity.UserEntity;
import com.ecommerce.app.repository.AccountVerificationRepository;
import com.ecommerce.app.repository.UserRepository;
import com.ecommerce.app.service.AwsService;
import com.ecommerce.app.service.UserService;
import com.ecommerce.app.utils.DateUtils;
import com.ecommerce.app.utils.UniqueID;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ThreadLocalRandom;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private AccountVerificationRepository accountVerification;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    AwsService awsService;

    @Autowired
    DateUtils dateutils;

    @Override
    public void saveAccountVerification(String phoneNumber, String otp) throws Exception {
        AccountVerification accountVerification = new AccountVerification();
        accountVerification.setOtp(otp);
        accountVerification.setMaxResendAttempts(3);
        accountVerification.setIncorrectAttempts(1);
        accountVerification.setPhoneNumber(phoneNumber);
        accountVerification.setVerifyStatus(false);
        this.accountVerification.save(accountVerification);
        fireOTPToMobile(phoneNumber, otp);
    }

    private void fireOTPToMobile(String phoneNumber, String otp) throws JSONException {
        //TODO fire the OTP
    }


    @Override
    public UserEntity getUserByPhoneNumber(String phone) throws Exception {
        UserEntity user = userRepository.findByPhoneNumber(phone);
        if (user == null) {
            throw new ResourceNotFoundException(ApiStatusConstants.ERR_USER_NOT_EXIST);
        }
        return user;
    }

    @Override
    public UserEntity save(UserEntity users) {
        return userRepository.save(users);
    }

    @Override
    public String logout(String phoneNumber) throws Exception {
        UserEntity existedUser = getUserByPhoneNumber(phoneNumber);
        existedUser.setDeviceId(null);
        save(existedUser);
        return ApiStatusConstants.USER_SUCCESSFULLY_LOGGED_OUT;
    }

    @Override
    public UserResponseDTO editUser(String phoneNumber, UserDetailUpdateRequestDTO detailUpdateRequest) throws Exception {
        UserEntity existedUser = getUserByPhoneNumber(phoneNumber);
        if (detailUpdateRequest.getName() != null) {
            existedUser.setName(detailUpdateRequest.getName());
        }
        if (detailUpdateRequest.getEmail() != null) {
            existedUser.setEmail(detailUpdateRequest.getEmail());
        }
        existedUser = save(existedUser);
        return userResponseDTOFromUser(existedUser);
    }

    @Override
    public UserFileUploadResponseDTO uploadUserPhoto(MultipartFile artifact, String phoneNumber) throws Exception {
        UserEntity patient = getUserByPhoneNumber(phoneNumber);
        String fileName = artifact.getOriginalFilename();
        String resourceUrl = awsService.uploadFile(artifact, phoneNumber + "/" + fileName);
        UserFileUploadResponseDTO uploadResponseDTO = new UserFileUploadResponseDTO(
                ApiStatusConstants.FILE_UPLOADED_SUCCESS,
                fileName,
                resourceUrl,
                dateutils.simpleDateTimeFormat.format(new Date()),
                UUID.randomUUID());

        patient.setPhoto(resourceUrl);
        save(patient);
        return uploadResponseDTO;
    }

    @Override
    public OTPSentResponse login(String phoneNumber) throws Exception {
        OTPSentResponse otpSentResponse = new OTPSentResponse();
        String otp = String.valueOf(ThreadLocalRandom.current().nextInt(1000, 9999));
        saveAccountVerification(phoneNumber, otp);
        otpSentResponse.setMessage("OTP sent to " + phoneNumber);
        //TODO Remove the otp from the response api
        otpSentResponse.setOtp(otp);
        otpSentResponse.setPhoneNumber(phoneNumber);
        return otpSentResponse;
    }



    @Override
    public UserResponseDTO verifyOTP(String phoneNumber, String otp, String deviceId) throws Exception {
        boolean verified = otp.equalsIgnoreCase(String.valueOf(accountVerification.getOTPByPhoneNumber(phoneNumber)));
        if (!verified) {
            throw new Exception("Incorrect OTP :" + otp);
        }
        UserEntity existedUser;
        UserResponseDTO userResponseDTO;
        try {
            existedUser
                    = getUserByPhoneNumber(phoneNumber);
            userResponseDTO = userResponseDTOFromUser(existedUser);
        } catch (AppException e) {
            UserEntity user = new UserEntity();
            user.setPhoneNumber(phoneNumber);
            user.setUserId(UniqueID.getUUID());
            user.setDeviceId(deviceId);
            user = save(user);
            userResponseDTO = userResponseDTOFromUser(user);
            userResponseDTO.setNewUser(true);
        }
        return userResponseDTO;
    }

    private UserResponseDTO userResponseDTOFromUser(UserEntity user) {
        UserResponseDTO userResponseDTO = new UserResponseDTO();
        userResponseDTO.setPhoneNumber(user.getPhoneNumber());
        userResponseDTO.setName(user.getName());
        userResponseDTO.setUserId(user.getUserId());
        userResponseDTO.setDeviceId(user.getDeviceId());
        userResponseDTO.setNewUser(false);
        userResponseDTO.setEmail(user.getEmail());
        userResponseDTO.setPhoto(user.getPhoto());
        return userResponseDTO;
    }
}
