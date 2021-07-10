package com.ecommerce.app.service;

import org.springframework.web.multipart.MultipartFile;

public interface AwsService {

    String uploadFile(final MultipartFile multipartFile, String fileName) throws Exception;

}
