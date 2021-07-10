package com.ecommerce.app.models.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.UUID;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserFileUploadResponseDTO implements Serializable {

    private String message;

    private String fileName;

    private String url;

    private String uploadedDate;

    private UUID id;

}