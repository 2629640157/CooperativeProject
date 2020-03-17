package com.ydgk.communityServices.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 游斌
 * @create 2020-03-16  20:54
 */
public class StringToDate {

    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-DD");
    public static Date changeString(String dateStr) {
        Date date = null;
        try {
            date = sdf.parse(dateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        System.out.println(date);
        return date;
    }
}
