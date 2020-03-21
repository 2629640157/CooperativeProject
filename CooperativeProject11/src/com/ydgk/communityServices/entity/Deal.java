package com.ydgk.communityServices.entity;

import java.util.Date;

public class Deal {
    private String did;
    private String starttime;
    private String usefultime;
    private String status;
    private int salary;
    private String kinds;
    private String introducefee;
    private String submitdate;
    //3个外键
    private Employer employer;
    private Worker worker;
    private Company company;


    public Deal(String did, String introducefee, String submitdate) {
        this.did = did;
        this.introducefee = introducefee;
        this.submitdate = submitdate;

    }

    public Deal() {
        this.did = did;
        this.employer = employer;
        this.worker = worker;
        this.company=company;
        this.starttime = starttime;
        this.usefultime = usefultime;
        this.status = status;
        this.salary = salary;
        this.kinds = kinds;
        this.introducefee = introducefee;
        this.submitdate = submitdate;
    }

    public Deal(String status, String kinds) {
        this.status = status;
        this.kinds = kinds;

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

    public Company getCompany() { return company; }

    public void setCompany(Company company) { this.company = company; }

    public void setDid(String did) {
        this.did = did;
    }

    public String getDid() {
        return did;
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

    public String getSubmitdate() {
        return submitdate;
    }

    public void setSubmitdate(String submitdate) {
        this.submitdate = submitdate;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String sarttime) {
        this.starttime = starttime;
    }

    public String getUsefultime() {
        return usefultime;
    }

    public void setUsefultime(String usefultime) {
        this.usefultime = usefultime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
