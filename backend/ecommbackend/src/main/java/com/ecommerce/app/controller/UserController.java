package com.ecommerce.app.controller;

import com.ecommerce.app.models.dto.response.OTPSentResponseDTO;
import com.ecommerce.app.models.dto.response.UserResponseDTO;
import com.ecommerce.app.models.dto.request.UserAddDetailRequestDTO;
import com.ecommerce.app.models.dto.request.UserDetailUpdateRequestDTO;
import com.ecommerce.app.service.UserService;
import com.ecommerce.app.utils.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@EnableAutoConfiguration
@RestController()
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    ResponseUtil responseUtil;


    @RequestMapping(path = "/login", method = RequestMethod.GET, produces = "application/json", params = "phone_number")
    ResponseEntity loginUser(@RequestParam("phone_number") String phoneNumber) throws Exception {

        OTPSentResponseDTO otpSentResponseDTO = userService.login(phoneNumber);
        return responseUtil.successResponse(otpSentResponseDTO);
    }


    @RequestMapping(value = "/verify", method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity verifyOTP(@RequestParam("phone_number") String phoneNumber, @RequestParam String otp, @RequestParam("device_id") String deviceId)
            throws Exception {
        UserResponseDTO userResponseDTO = userService.verifyOTP(phoneNumber, otp, deviceId);

        return responseUtil.successResponse(userResponseDTO);
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity logout(@RequestParam("phone_number") String phoneNumber)
            throws Exception {
        return responseUtil.successResponse(userService.logout(phoneNumber));
    }

    @RequestMapping(method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity getUserDetail(@RequestParam("phone_number") String phoneNumber)
            throws Exception {
        return responseUtil.successResponse(userService.getUserByPhoneNumber(phoneNumber));
    }

    @RequestMapping(value = "edit_user", method = RequestMethod.POST, produces = "application/json")
    public ResponseEntity editUser(@RequestBody UserDetailUpdateRequestDTO detailUpdateRequest, @RequestParam(value = "phone_number", required = true) String phoneNumber)
            throws Exception {
        return responseUtil.successResponse(userService.editUser(phoneNumber, detailUpdateRequest));
    }

    @RequestMapping(value = "add_user_details", method = RequestMethod.POST, produces = "application/json")
    public ResponseEntity addUserDetails(@RequestBody UserAddDetailRequestDTO requestDTO, @RequestParam(value = "phone_number", required = true) String phoneNumber)
            throws Exception {
        return responseUtil.successResponse(userService.addUserDetails(phoneNumber, requestDTO));
    }

    @RequestMapping(value = "/fileUpload", method = RequestMethod.PUT, produces = "application/json")
    public ResponseEntity uploadFile(
            @RequestParam(value = "file") MultipartFile artifact,
            @RequestParam(value = "phone_number") String phoneNumber
    ) throws Exception {
        return responseUtil.successResponse(userService.uploadUserPhoto(artifact, phoneNumber));
    }


}
