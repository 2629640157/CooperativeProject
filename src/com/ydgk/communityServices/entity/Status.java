package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-16:12
 */
public class Status {
    private  int   id;
    private  int word_id;
    private  int sender;
    private  int accept;
    private  int state;

    public Status(int id, int word_id, int sender, int accept, int state) {
        this.id = id;
        this.word_id = word_id;
        this.sender = sender;
        this.accept = accept;
        this.state = state;
    }

    public Status() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getWord_id() {
        return word_id;
    }

    public void setWord_id(int word_id) {
        this.word_id = word_id;
    }

    public int getSender() {
        return sender;
    }

    public void setSender(int sender) {
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
