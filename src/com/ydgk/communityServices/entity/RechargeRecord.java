package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-16:08
 */
public class RechargeRecord {
    private int recharge_id;

    private int money;
    private int person;
    private Date datetime;
    private String remark;


    private RechargeCard rechargeCard;
    public RechargeRecord(int recharge_id, int money, int person, Date datetime, String remark) {
        this.recharge_id = recharge_id;

        this.money = money;
        this.person = person;
        this.datetime = datetime;
        this.remark = remark;
    }

    public RechargeRecord() {
    }

    public int getRecharge_id() {
        return recharge_id;
    }

    public void setRecharge_id(int recharge_id) {
        this.recharge_id = recharge_id;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public int getPerson() {
        return person;
    }

    public void setPerson(int person) {
        this.person = person;
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }


}
