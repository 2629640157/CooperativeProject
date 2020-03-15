package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-15:52
 */
public class Experience {
    private int eid;
    private int wid;
    private String workplace;
    private String kinds;
    private String duty;
    private Date worktime;

    public Experience(int eid, int wid, String workplace, String kinds, String duty, Date worktime) {
        this.eid = eid;
        this.wid = wid;
        this.workplace = workplace;
        this.kinds = kinds;
        this.duty = duty;
        this.worktime = worktime;
    }

    public Experience() {
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

    public String getWorkplace() {
        return workplace;
    }

    public void setWorkplace(String workplace) {
        this.workplace = workplace;
    }

    public String getKinds() {
        return kinds;
    }

    public void setKinds(String kinds) {
        this.kinds = kinds;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public Date getWorktime() {
        return worktime;
    }

    public void setWorktime(Date worktime) {
        this.worktime = worktime;
    }
}
