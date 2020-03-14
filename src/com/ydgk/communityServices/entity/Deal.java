package com.ydgk.communityServices.entity;

import java.util.Date;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-11:33
 */
public class Deal {
    private  int did;
    private int cid;
    private int eid;
    private int wid;
    private Date starttime;
    private  Date usefultime;
    private  String status;

    public Deal(int did, int cid, int eid, int wid, Date starttime, Date usefultime, String status) {
        this.did = did;
        this.cid = cid;
        this.eid = eid;
        this.wid = wid;
        this.starttime = starttime;
        this.usefultime = usefultime;
        this.status = status;
    }

    public Deal() {
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getUsefultime() {
        return usefultime;
    }

    public void setUsefultime(Date usefultime) {
        this.usefultime = usefultime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
