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
    private String type;
    private String duty;
    private Date worktime;

    public Experience(int eid, int wid, String workplace, String type, String duty, Date worktime) {
        this.eid = eid;
        this.wid = wid;
        this.workplace = workplace;
        this.type = type;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
