package com.ecommerce.app.models.dto.response;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Data
@Getter
@Setter
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class UserResponseDTO {
    String userId;
    String phoneNumber;
    String name;
    String deviceId;
    String email;
    String photo;
    boolean isNewUser;
}
