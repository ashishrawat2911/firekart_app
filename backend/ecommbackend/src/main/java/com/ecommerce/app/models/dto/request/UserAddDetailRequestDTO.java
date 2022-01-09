package com.ecommerce.app.models.dto.request;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.Data;
import lombok.Getter;

@Data
@Getter
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class UserAddDetailRequestDTO {
    String name;
}
