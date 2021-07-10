package com.ecommerce.app.utils;

import lombok.Data;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.ZonedDateTime;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

@Component
@Data
public class DateUtils {

    public static final String MYSQL_DATE_FORMAT = "yyyy-MM-dd";
    public static final String MYSQL_TIMESTAMP_FORMAT = "yyyy-MM-dd HH:mm:ss";
    public SimpleDateFormat simpleDateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public static final String IST_TIMEZONE = "IST";
    public static final String UTC_TIMEZONE = "UTC";
    public static final String DUBAI_TIMEZONE = "Asia/Dubai";

    public static String getDateTimeUTC() {
        SimpleDateFormat sdf = new SimpleDateFormat(MYSQL_TIMESTAMP_FORMAT);
        sdf.setTimeZone(TimeZone.getTimeZone(UTC_TIMEZONE));
        String utcTime = sdf.format(new Date());
        return utcTime;
    }

    public static boolean isDateStringValid(String dateTime, String format) throws ParseException {
        if (StringUtils.isEmpty(dateTime)) {
            throw new ParseException("Attempt to parse empty dateTime :" + dateTime, 0);
        }
        if (StringUtils.isEmpty(format)) {
            throw new ParseException("Attempt to parse dateTime using invalid format:" + format, 0);
        }
        try {
            DateFormat formatter = new SimpleDateFormat(format);
            formatter.setLenient(false);
            Date parsedDate = formatter.parse(dateTime);
            return true;
        } catch (ParseException e) {
            //If input date is in different format or invalid.
            return false;
        }
    }

    public static Date parseDate(String dateTime, String format) throws ParseException {

        if (StringUtils.isEmpty(dateTime)) {
            throw new ParseException("Attempt to parse empty dateTime :" + dateTime, 0);
        }
        if (StringUtils.isEmpty(format)) {
            throw new ParseException("Attempt to parse dateTime using invalid format:" + format, 0);
        }
        SimpleDateFormat inputFormat = new SimpleDateFormat(format);
        Date date = inputFormat.parse(dateTime);

        return date;
    }

    public static String formatDate(Date dateTime, String format) throws ParseException {

        if (StringUtils.isEmpty(format)) {
            throw new ParseException("Attempt to parse dateTime using invalid format:" + format, 0);
        }
        SimpleDateFormat outputFormat = new SimpleDateFormat(format);
        return outputFormat.format(dateTime);
    }

    /**
     * returns true if date1 is after or equals to date2
     *
     * @param date1
     * @param date2
     * @return
     */
    public static boolean isAfterOrEqual(Date date1, Date date2) {
        if (date1.compareTo(date2) < 0) {
            return false;
        }
        return true;
    }

    /**
     * returns true if date1 is after date2
     *
     * @param date1
     * @param date2
     * @return
     */
    public static boolean isAfter(Date date1, Date date2) {
        if (date1.after(date2)) {
            return true;
        }
        return false;
    }

    /**
     * returns true if date1 is before or equals to date2
     *
     * @param date1
     * @param date2
     * @return
     */
    public static boolean isBeforeOrEqual(Date date1, Date date2) {
        if (date1.compareTo(date2) > 0) {
            return false;
        }
        return true;
    }

    /**
     * returns true if date1 is before date2
     *
     * @param date1
     * @param date2
     * @return
     */
    public static boolean isBefore(Date date1, Date date2) {
        if (date1.before(date2)) {
            return true;
        }
        return false;
    }

    public static String formatDateToString(Date dt, String format) throws ParseException {

        if (StringUtils.isEmpty(format)) {
            throw new ParseException("Attempt to parse dateTime using invalid format:" + format, 0);
        }
        SimpleDateFormat outputFormat = new SimpleDateFormat(format);
        return outputFormat.format(dt);
    }

    /**
     * Get a diff between two dates
     *
     * @param date1    the oldest date
     * @param date2    the newest date
     * @param timeUnit the unit in which you want the diff
     * @return the diff value, in the provided unit
     */
    public static long getDateDiff(Date date1, Date date2, TimeUnit timeUnit) {
        long diffInMillies = date2.getTime() - date1.getTime();
        return timeUnit.convert(diffInMillies, TimeUnit.MILLISECONDS);
    }

//    public static Date getStartOfDay(Date date) {
//        return DateUtils.truncate(date, Calendar.DATE);
//    }

    public static Date getTodayDate() {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, 0);
        return cal.getTime();
    }

    public static Date subStractDays(Date date, int count) {
        return DateUtils.addDays(date, -count);
    }

    public static Date addDays(Date date, int count) {
        return DateUtils.addDays(date, count);
    }

    public static String convertTimezone(String dateTime, String inputTimezone, String outputTimezone,
                                         String dateTimeformat) throws ParseException {

        TimeZone inTimeZone = TimeZone.getTimeZone(inputTimezone);

        SimpleDateFormat sdfInput = new SimpleDateFormat(dateTimeformat);
        sdfInput.setTimeZone(inTimeZone);
        Date inputDate = sdfInput.parse(dateTime);

        ZonedDateTime inputZonedDateTime = ZonedDateTime.ofInstant(inputDate.toInstant(), inTimeZone.toZoneId());
        ZonedDateTime finalDateTimeToConsider;

        boolean withEarlierOffsetAtOverlap = false; // read from config if needed
        if (withEarlierOffsetAtOverlap) {
            finalDateTimeToConsider = inputZonedDateTime.withEarlierOffsetAtOverlap();
        } else {
            finalDateTimeToConsider = inputZonedDateTime.withLaterOffsetAtOverlap();
        }

        SimpleDateFormat sdfOutput = new SimpleDateFormat(dateTimeformat);
        sdfOutput.setTimeZone(TimeZone.getTimeZone(outputTimezone));

        return sdfOutput.format(Date.from(finalDateTimeToConsider.toInstant()));

    }

    public static Date convertTimezone(Date date, String inputTimezone, String outputTimezone) throws ParseException {

        String inputDate = formatDate(date, MYSQL_TIMESTAMP_FORMAT);
        String outputDate = convertTimezone(inputDate, inputTimezone, outputTimezone, MYSQL_TIMESTAMP_FORMAT);
        return parseDate(outputDate, MYSQL_TIMESTAMP_FORMAT);
    }

    public static Date convertToIST(Date date, String sourceTimezone) {
        try {
            if (date == null) {
                return date;
            }
            return convertTimezone(date, sourceTimezone, IST_TIMEZONE);
        } catch (Exception e) {
            System.err.println("Error converting timezone - dateTime : " + date + ", sourceTimezone : "
                    + sourceTimezone + ", Error : " + e.getMessage());
        }
        return date;
    }

    public static String convertToIST(String dateTime, String sourceTimezone, String dateTimeformat) {
        try {
            if (StringUtils.isEmpty(dateTime)) {
                return dateTime;
            }
            return convertTimezone(dateTime, sourceTimezone, IST_TIMEZONE, dateTimeformat);
        } catch (Exception e) {
            System.err.println("Error converting timezone - dateTime : " + dateTime + ", sourceTimezone : "
                    + sourceTimezone + ", dateTimeformat : " + dateTimeformat + ", Error : " + e.getMessage());
        }
        return dateTime;
    }

    public static Date convertFromIST(Date date, String targetTimezone) {
        try {
            if (date == null) {
                return date;
            }
            return convertTimezone(date, IST_TIMEZONE, targetTimezone);
        } catch (Exception e) {
            System.err.println("Error converting timezone - dateTime : " + date + ", targetTimezone : "
                    + targetTimezone + ", Error : " + e.getMessage());
        }
        return date;
    }

    public static String convertFromIST(String dateTime, String targetTimezone, String dateTimeformat) {
        try {
            if (StringUtils.isEmpty(dateTime)) {
                return dateTime;
            }
            return convertTimezone(dateTime, IST_TIMEZONE, targetTimezone, dateTimeformat);
        } catch (Exception e) {
            System.err.println("Error converting timezone - dateTime : " + dateTime + ", targetTimezone : "
                    + targetTimezone + ", dateTimeformat : " + dateTimeformat + ", Error : " + e.getMessage());
        }
        return dateTime;
    }

    public static String getCurrentDate(String format, String timezone) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        Date date = DateUtils.convertFromIST(new Date(), timezone);
        return sdf.format(date);

    }

    public static String getCurrentDateTimeIST() {
        SimpleDateFormat sdf = new SimpleDateFormat(MYSQL_TIMESTAMP_FORMAT);
        Date date = DateUtils.convertFromIST(new Date(), IST_TIMEZONE);
        return sdf.format(date);

    }

    public static String addXDays(String currentDate, String inputFormat, int x) throws ParseException {

        SimpleDateFormat sdf = new SimpleDateFormat(inputFormat);
        Date inputDate = parseDate(currentDate, inputFormat);

        Calendar cal = Calendar.getInstance();
        cal.setTime(inputDate);
        cal.add(Calendar.DATE, x); // add 10 days

        return sdf.format(cal.getTime());
    }

    public static Date addMinutesToDate(int minutes, Date beforeTime) {
        final long ONE_MINUTE_IN_MILLIS = 60000;//millisecs

        long curTimeInMs = beforeTime.getTime();
        Date afterAddingMins = new Date(curTimeInMs + (minutes * ONE_MINUTE_IN_MILLIS));
        return afterAddingMins;
    }

    public static Time getCurrentTime(String timeZone){
        Date date = new Date();
        DateFormat df = new SimpleDateFormat("HH:mm:ss");
        df.setTimeZone(TimeZone.getTimeZone(timeZone));
        return  getTime(df.format(date));
    }

    public static int getDayOfWeek(String timezone){
        Calendar calendar = Calendar.getInstance(); // set this up however you need it.
        calendar.setTimeZone(TimeZone.getTimeZone(timezone));
        int dow = calendar.get(Calendar.DAY_OF_WEEK);
        return dow;
    }

    public static Time getTime(String timeStr){
        return Time.valueOf(timeStr);
    }

    public static void main(String[] args) {
       System.out.println(getDayOfWeek(DUBAI_TIMEZONE));
    }


}
