package com.ecommerce.app.utils;

import com.ecommerce.app.constants.NetworkConstants;
import com.ecommerce.app.exception.BadRequestException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@Slf4j
public class AppUtils {

    public static int calculateAge(LocalDate birthDate, LocalDate currentDate) {
        if ((birthDate != null) && (currentDate != null)) {
            return Period.between(birthDate, currentDate).getYears();
        } else {
            return 0;
        }
    }


    public static String getDateWithTimeAsString(Date date) {
        DateFormat dateFormat = new SimpleDateFormat(NetworkConstants.DATE_FORMAT_WITH_TIME);
        return dateFormat.format(date);
    }

    public static String validateMobileNumber(String mobileNumber, String message) throws Exception {
        checkIfStringEmpty(mobileNumber, message);
        Pattern pattern = Pattern.compile("[6-9][0-9]{9}");
        Matcher matcher = pattern.matcher(mobileNumber);
        if (!matcher.find() || !matcher.group().equals(mobileNumber)) {
            log.error(message + mobileNumber);
            throw new BadRequestException(message + mobileNumber);
        } else {
            return mobileNumber;
        }
    }

    public static String checkIfStringEmpty(String string, String message) {
        if (StringUtils.isEmpty(string)) {
            log.error(message);
            throw new BadRequestException(message);
        }
        return string;
    }

    public static <T> List<T> checkIfListNull(List<T> t, String message) {
        if (t == null || t.isEmpty()) {
            log.error(message);
            throw new BadRequestException(message);
        }
        return t;
    }

    public static String generateRandomUUID() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }
}
