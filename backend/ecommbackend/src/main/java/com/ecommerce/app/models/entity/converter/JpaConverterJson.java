package com.ecommerce.app.models.entity.converter;//package com.codejek.numen.model.converter;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;
import java.io.IOException;
import java.io.StringWriter;

@Converter(autoApply = true)
public class JpaConverterJson implements AttributeConverter<Object, String> {

    private final static ObjectMapper objectMapper = new ObjectMapper();

    @Override
    public String convertToDatabaseColumn(Object meta) {
        try {
            return  objectMapper.writeValueAsString(meta).replace("\"", "");
        } catch (JsonProcessingException ex) {
            ex.printStackTrace();
            return null;
            // or throw an error
        }
    }

    @Override
    public Object convertToEntityAttribute(String dbData) {
        if(null == dbData){
            return null;
        }
        try {
            return objectMapper.readValue(dbData, Object.class);
        } catch (IOException ex) {
            //logger.error("Unexpected IOEx decoding json from database: " + dbData);
            return null;
        }
    }

}