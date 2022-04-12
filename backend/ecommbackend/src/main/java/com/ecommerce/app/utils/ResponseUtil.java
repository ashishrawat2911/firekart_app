package com.ecommerce.app.utils;


import com.ecommerce.app.constants.NetworkConstants;
import com.ecommerce.app.models.base.BaseResponse;
import com.ecommerce.app.models.base.EmptyBaseResponse;
import com.ecommerce.app.models.base.PagingResponseModel;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

@Component
public class ResponseUtil {
    public ResponseEntity successResponse(Object response) {
        return ResponseEntity.ok(new BaseResponse<>(NetworkConstants.RESPONSE_STATUS.success.name(), response));
    }

    public ResponseEntity emptySuccessResponse() {
        return ResponseEntity.ok(new EmptyBaseResponse<>(NetworkConstants.RESPONSE_STATUS.success.name()));
    }

}
