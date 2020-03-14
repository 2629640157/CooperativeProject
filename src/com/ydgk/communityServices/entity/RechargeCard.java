package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-16:05
 */
public class RechargeCard {
    private int card_id;
    private int times;
    private  int money_norm;
    private  int total_amount;
    private  int balance;
    private  int top_company_id;

    public RechargeCard(int card_id, int times, int money_norm, int total_amount, int balance, int top_company_id) {
        this.card_id = card_id;
        this.times = times;
        this.money_norm = money_norm;
        this.total_amount = total_amount;
        this.balance = balance;
        this.top_company_id = top_company_id;
    }

    public RechargeCard() {
    }

    public int getCard_id() {
        return card_id;
    }

    public void setCard_id(int card_id) {
        this.card_id = card_id;
    }

    public int getTimes() {
        return times;
    }

    public void setTimes(int times) {
        this.times = times;
    }

    public int getMoney_norm() {
        return money_norm;
    }

    public void setMoney_norm(int money_norm) {
        this.money_norm = money_norm;
    }

    public int getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(int total_amount) {
        this.total_amount = total_amount;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public int getTop_company_id() {
        return top_company_id;
    }

    public void setTop_company_id(int top_company_id) {
        this.top_company_id = top_company_id;
    }
}
