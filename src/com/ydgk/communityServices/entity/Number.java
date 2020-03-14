package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-16:00
 */
public class Number {
    private int number;
    private int username;
    private  String name;
    private String email;
    private String password;
    private String status;
    private String company_rank;

    public Number(int number, int username, String name, String email, String password, String status, String company_rank) {
        this.number = number;
        this.username = username;
        this.name = name;
        this.email = email;
        this.password = password;
        this.status = status;
        this.company_rank = company_rank;
    }

    public Number() {
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getUsername() {
        return username;
    }

    public void setUsername(int username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCompany_rank() {
        return company_rank;
    }

    public void setCompany_rank(String company_rank) {
        this.company_rank = company_rank;
    }
}
