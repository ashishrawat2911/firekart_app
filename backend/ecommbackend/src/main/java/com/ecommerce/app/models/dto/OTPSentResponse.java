package com.ecommerce.app.models.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor


@Data
public class OTPSentResponse {


    @JsonProperty("phone_number")
    String phoneNumber;
    String message;
    String otp;


}
