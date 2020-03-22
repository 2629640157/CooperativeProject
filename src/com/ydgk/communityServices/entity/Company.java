package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-11:18
 */
public class Company {
    private int cid;
    private String caccount;
    private String cname;
    private String shuoming;
    private Number number;//账号
    private RechargeCard rechargeCard;//充值卡
    private CardRecord cardRecord;//刷卡记录
    private RechargeRecord rechargeRecord;//充值记录


    public Company() {
    }

    public Company(int cid) {
        this.cid = cid;
    }

    public Company(int cid, String caccount, String cname, String shuoming) {
        this.cid = cid;
        this.caccount = caccount;
        this.cname = cname;
        this.shuoming = shuoming;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCaccount() {
        return caccount;
    }

    public void setCaccount(String caccount) {
        this.caccount = caccount;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public void setCanme(String canme) {
        this.cname = canme;
    }

    public String getShuoming() {
        return shuoming;
    }

    public void setShuoming(String shuoming) {
        this.shuoming = shuoming;
    }

    public Number getNumber() {
        return number;
    }

    public void setNumber(Number number) {
        this.number = number;
    }

    public RechargeCard getRechargeCard() {
        return rechargeCard;
    }

    public void setRechargeCard(RechargeCard rechargeCard) {
        this.rechargeCard = rechargeCard;
    }

    public CardRecord getCardRecord() {
        return cardRecord;
    }

    public void setCardRecord(CardRecord cardRecord) {
        this.cardRecord = cardRecord;
    }

    public RechargeRecord getRechargeRecord() {
        return rechargeRecord;
    }

    public void setRechargeRecord(RechargeRecord rechargeRecord) {
        this.rechargeRecord = rechargeRecord;
    }
}
