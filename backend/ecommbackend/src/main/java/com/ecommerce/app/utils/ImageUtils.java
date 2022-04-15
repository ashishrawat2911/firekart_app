package com.ecommerce.app.utils;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ecommerce.app.models.dto.internal.ImagesUrl;
import lombok.extern.slf4j.Slf4j;

import java.util.Arrays;
import java.util.List;



@Slf4j
public class ImageUtils {

    public static List<ImagesUrl> mapImageUrl(ObjectMapper mapper, String images){
        List<ImagesUrl> imagesUrls = null;
        try {
            if(images!=null){
                imagesUrls = mapper.readValue(images, new TypeReference<List<ImagesUrl>>() {
                });
            }else{
                log.warn("Skipping image mapping as it is null..");
            }
        } catch (Throwable e) {
            log.error("Exception mapping image urls {} :: {}", e.getMessage(), Arrays.asList(e.getStackTrace()));
        }
        return imagesUrls;
    }

}
