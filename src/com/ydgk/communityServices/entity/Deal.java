package com.ydgk.communityServices.entity;

import java.util.Date;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-11:33
 */
public class Deal {
    private int did;
    private Date starttime;
    private Date usefultime;
    private String status;
    private int salary;
    private String kinds;
    private String introducefee;
    private Date submitdate;
    //2个外键
    private Employer employer;
    private Worker worker;

    public Deal(int did, Employer employer, Worker worker, Date starttime, Date usefultime, String status, int salary, String kinds, String introducefee, Date submitdate) {
        this.did = did;
        this.employer = employer;
        this.worker = worker;
        this.starttime = starttime;
        this.usefultime = usefultime;
        this.status = status;
        this.salary = salary;
        this.kinds = kinds;
        this.introducefee = introducefee;
        this.submitdate = submitdate;
    }

    public Deal(String status, String kinds, Employer employer) {
        this.status = status;
        this.kinds = kinds;
        this.employer = employer;
    }

    public Deal() {
    }


    public Employer getEmployer() {
        return employer;
    }

    public void setEmployer(Employer employer) {
        this.employer = employer;
    }

    public Worker getWorker() {
        return worker;
    }

    public void setWorker(Worker worker) {
        this.worker = worker;
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getKinds() {
        return kinds;
    }

    public void setKinds(String kinds) {
        this.kinds = kinds;
    }

    public String getIntroducefee() {
        return introducefee;
    }

    public void setIntroducefee(String introducefee) {
        this.introducefee = introducefee;
    }

    public Date getSubmitdate() {
        return submitdate;
    }

    public void setSubmitdate(Date submitdate) {
        this.submitdate = submitdate;
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
