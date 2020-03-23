package com.ydgk.communityServices.entity;

import java.util.Date;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-15:58
 */
public class Message {
    private  int word_id;
    private String subject;
    private String content;
    private java.util.Date date_time;

    public Message(int word_id, String subject, String content, java.util.Date date_time) {
        this.word_id = word_id;
        this.subject = subject;
        this.content = content;
        this.date_time = date_time;
    }

    public Message() {
    }

    public int getWord_id() {
        return word_id;
    }

    public Message(String subject, String content, Date date_time) {
        this.subject = subject;
        this.content = content;
        this.date_time = date_time;
    }

    public void setWord_id(int word_id) {
        this.word_id = word_id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate_time() {
        return date_time;
    }

    public void setDate_time(java.util.Date date_time) {
        this.date_time = date_time;
    }
}
