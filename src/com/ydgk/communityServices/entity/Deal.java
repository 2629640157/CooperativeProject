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
    private Integer introducefee;
    private Date submitdate;
    //2个外键
    private Employer employer;
    private Worker worker;

    public Deal(Date starttime, Employer employer) {
        this.starttime = starttime;
        this.employer = employer;
    }

    public Deal(Date usefultime, String status, int salary, String kinds, Integer introducefee, Employer employer, Worker worker) {
        this.usefultime = usefultime;
        this.status = status;
        this.salary = salary;
        this.kinds = kinds;
        this.introducefee = introducefee;
        this.employer = employer;
        this.worker = worker;
    }

    public Deal(int did, Employer employer, Worker worker, Date starttime, Date usefultime, String status, int salary, String kinds, Integer introducefee, Date submitdate) {
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

    public Deal(String status, Employer employer, Worker worker) {
        this.status = status;
        this.employer = employer;
        this.worker = worker;
    }

    public Deal(Employer employer, Worker worker) {
        this.employer = employer;
        this.worker = worker;
    }

    public Deal(int did) {
        this.did = did;
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

    public Integer getIntroducefee() {
        return introducefee;
    }

    public void setIntroducefee(Integer introducefee) {
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
