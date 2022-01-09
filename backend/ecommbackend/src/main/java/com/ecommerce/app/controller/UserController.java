package com.ecommerce.app.controller;

import com.ecommerce.app.constants.ApiStatusConstants;
import com.ecommerce.app.exception.UnauthorizedException;
import com.ecommerce.app.models.dto.JwtResponse;
import com.ecommerce.app.models.dto.LoginForm;
import com.ecommerce.app.models.dto.OTPSentResponse;
import com.ecommerce.app.models.dto.UserResponseDTO;
import com.ecommerce.app.models.dto.request.UserAddDetailRequestDTO;
import com.ecommerce.app.models.dto.request.UserDetailUpdateRequestDTO;
import com.ecommerce.app.models.entity.UserEntity;
import com.ecommerce.app.security.JWT.JwtProvider;
import com.ecommerce.app.service.UserService;
import com.ecommerce.app.utils.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.security.Principal;

@EnableAutoConfiguration
@RestController()
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    ResponseUtil responseUtil;

    @Autowired
    JwtProvider jwtProvider;

    @Autowired
    AuthenticationManager authenticationManager;


    @RequestMapping(path = "/login", method = RequestMethod.GET, produces = "application/json", params = "phone_number")
    ResponseEntity loginUser(@RequestParam("phone_number") String phoneNumber) throws Exception {

        OTPSentResponse otpSentResponse = userService.login(phoneNumber);
        return responseUtil.successResponse(otpSentResponse);
    }


    @RequestMapping(value = "/verify", method = RequestMethod.GET, produces = "application/json")
    public ResponseEntity verifyOTP(@RequestParam("phone_number") String phoneNumber, @RequestParam String otp, @RequestParam("device_id") String deviceId)
            throws Exception {
        try {
            UserResponseDTO userResponseDTO = userService.verifyOTP(phoneNumber, otp, deviceId);
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(phoneNumber, otp));
            SecurityContextHolder.getContext().setAuthentication(authentication);
            String jwt = jwtProvider.generate(authentication);
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            UserEntity user = userService.getUserByPhoneNumber(userDetails.getUsername());
            return responseUtil.successResponse(new JwtResponse(jwt, user.getEmail(), user.getName(), user.getRole()));
        } catch (AuthenticationException e) {
            throw new UnauthorizedException(ApiStatusConstants.ERR_UNAUTHORIZED);
        }
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


    @PostMapping("/login")
    public ResponseEntity<JwtResponse> login(@RequestBody LoginForm loginForm) {
        // throws Exception if authentication failed
        try {
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(loginForm.getUsername(), loginForm.getPassword()));
            SecurityContextHolder.getContext().setAuthentication(authentication);
            String jwt = jwtProvider.generate(authentication);
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            UserEntity user = userService.findUserByEmail(userDetails.getUsername());
            return ResponseEntity.ok(new JwtResponse(jwt, user.getEmail(), user.getName(), user.getRole()));
        } catch (AuthenticationException e) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
    }


    @PutMapping("/profile")
    public ResponseEntity update(@RequestBody UserDetailUpdateRequestDTO user, Principal principal) {
        try {
            if (!principal.getName().equals(user.getEmail())) throw new IllegalArgumentException();
            return ResponseEntity.ok(userService.editUser("999999", user));
        } catch (Exception e) {
            return ResponseEntity.badRequest().build();
        }
    }

    @GetMapping("/profile/{email}")
    public ResponseEntity getProfile(@PathVariable("email") String email, Principal principal) {
        if (principal.getName().equals(email)) {
            return ResponseEntity.ok(userService.findUserByEmail(email));
        } else {
            return ResponseEntity.badRequest().build();
        }
    }
}
