package com.ecommerce.app.models.dto.request;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.Data;

@Data

@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class UserDetailUpdateRequestDTO {
    String name;
    String email;

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }
}
