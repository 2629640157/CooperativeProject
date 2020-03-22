package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-15:48
 */
public class Date {
    private int date_id;
    private String date_name;
    private String date_remark;
    private int date_class;

    public Date() {
    }

    public Date(int date_id, String date_name, String date_remark, int date_class) {
        this.date_id = date_id;
        this.date_name = date_name;
        this.date_remark = date_remark;
        this.date_class = date_class;
    }

    public int getDate_id() {
        return date_id;
    }

    public void setDate_id(int date_id) {
        this.date_id = date_id;
    }

    public String getDate_name() {
        return date_name;
    }

    public void setDate_name(String date_name) {
        this.date_name = date_name;
    }

    public String getDate_remark() {
        return date_remark;
    }

    public void setDate_remark(String date_remark) {
        this.date_remark = date_remark;
    }

    public int getDate_class() {
        return date_class;
    }

    public void setDate_class(int date_class) {
        this.date_class = date_class;
    }
}
