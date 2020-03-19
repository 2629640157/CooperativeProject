package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-16:12
 */
public class Status {
    private  int   id;
    private  Integer sender;
    private  int accept;
    private  int state;
    //外键
    private  Message message;


    public Status() {
    }

    public Status(int id, Integer sender, int accept, int state, Message message) {
        this.id = id;
        this.sender = sender;
        this.accept = accept;
        this.state = state;
        this.message = message;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Message getMessage() {
        return message;
    }

    public void setMessage(Message message) {
        this.message = message;
    }

    public int getSender() {
        return sender;
    }

    public void setSender(Integer sender) {
        this.sender = sender;
    }

    public int getAccept() {
        return accept;
    }

    public void setAccept(int accept) {
        this.accept = accept;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
