package com.ydgk.communityServices.entity;

import java.util.Date;

public class CardRecord {
    public static Object add;
    private int record_id;
    private String record_company_name;
    private float money;
    private String Date_time;
    private String type;

    public CardRecord(int record_id, String record_company_name, float money, String date_time, String type) {
        this.record_id = record_id;
        this.record_company_name = record_company_name;
        this.money = money;
        Date_time = date_time;
        this.type = type;
    }

    public CardRecord() {
    }

    public int getRecord_id() {
        return record_id;
    }

    public void setRecord_id(int record_id) {
        this.record_id = record_id;
    }

    public String getRecord_company_name() {
        return record_company_name;
    }

    public void setRecord_company_name(String record_company_name) {
        this.record_company_name = record_company_name;
    }

    public float getMoney() {
        return money;
    }

    public void setMoney(float money) {
        this.money = money;
    }

    public String getDate_time() {
        return Date_time;
    }

    public void setDate_time(String date_time) {
        Date_time = date_time;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
