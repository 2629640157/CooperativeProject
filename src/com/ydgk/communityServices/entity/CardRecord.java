package com.ydgk.communityServices.entity;

import java.util.Date;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-15:45
 */
public class CardRecord {
    private int record_id;
    private float money;
    private Date Date_time;
    private int type;

    public CardRecord(int record_id,  float money, Date date_time, int type) {
        this.record_id = record_id;

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

    public float getMoney() {
        return money;
    }

    public void setMoney(float money) {
        this.money = money;
    }

    public Date getDate_time() {
        return Date_time;
    }

    public void setDate_time(Date date_time) {
        Date_time = date_time;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
