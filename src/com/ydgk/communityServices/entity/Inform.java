package com.ydgk.communityServices.entity;

import java.util.Date;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-15:56
 */
public class Inform {
    private int iid;
    private String content;
    private java.util.Date informdate;

    public Inform(int iid, String content, java.util.Date informdate) {
        this.iid = iid;
        this.content = content;
        this.informdate = informdate;
    }

    public Inform() {
    }

    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getInformdate() {
        return informdate;
    }

    public void setInformdate(java.util.Date informdate) {
        this.informdate = informdate;
    }
}
