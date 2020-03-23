package com.ydgk.communityServices.entity;


public class Company {
    private int cid;
    private String caccount;
    private String canme;
    private String shuoming;



    public Company() {
    }

    public Company(int cid, String caccount) {
        this.cid = cid;
        this.caccount = caccount;
    }

    public Company(String canme, String shuoming) {
        this.canme = canme;
        this.shuoming = shuoming;
    }

    public Company(int cid, String caccount, String canme) {
        this.cid = cid;
        this.caccount = caccount;
        this.canme = canme;
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

    public String getCanme() {
        return canme;
    }

    public void setCanme(String canme) {
        this.canme = canme;
    }

    public String getShuoming() {
        return shuoming;
    }

    public void setShuoming(String shuoming) {
        this.shuoming = shuoming;
    }
}
