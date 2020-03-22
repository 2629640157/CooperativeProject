package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-16:13
 */
public class Train {
    private  int tid;
    private  int wid;
    private String organization;
    private String content;
    private String status;
    private  Date time;

    public Train(int tid, int wid, String organization, String content, String status, Date time) {
        this.tid = tid;
        this.wid = wid;
        this.organization = organization;
        this.content = content;
        this.status = status;
        this.time = time;
    }

    public Train() {
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
