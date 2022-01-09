package com.ecommerce.app.models.dto;

import lombok.Data;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Data
public class LoginForm {
    @NotNull
    private String username;
    @NotNull
    private String password;
}
