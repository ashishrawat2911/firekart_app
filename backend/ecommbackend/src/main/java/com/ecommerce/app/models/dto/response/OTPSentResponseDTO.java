package com.ecommerce.app.models.dto.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor


@Data
public class OTPSentResponseDTO {
    @JsonProperty("phone_number")
    String phoneNumber;
    String message;
    String otp;
}
