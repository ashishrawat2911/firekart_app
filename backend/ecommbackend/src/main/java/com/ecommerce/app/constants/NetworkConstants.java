package com.ecommerce.app.constants;

import org.springframework.stereotype.Component;

import java.io.Serializable;

@Component
public class NetworkConstants implements Serializable {

    public static final String DATE_FORMAT_WITH_TIME = "yyyy-MM-dd HH:mm:ss";
    public static final String FILE_UPLOAD_SUCCESS = "File upload successful";

    public enum RESPONSE_STATUS {
        success,
        failure
    }

    public enum LIFECYCLE_STATES {
        active
    }

}
