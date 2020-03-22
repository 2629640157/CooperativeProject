package com.ydgk.communityServices.entity;

import java.util.Date;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-11:48
 */
public class Employer {
    private  int eid;
    private  Company company;
    private String  ename;
   private String esex;
    private int eage;
    private String nation;
    private String nationplace;
   private String education;
   private String idcard;
    private String workplace;
    private String duty;
    private String htnumber;
    private Date httime;
    private String phone;
    private String cellphone;
    private String address;
    private  String hkaddress;
    private String serviceaddress;
    private String familyaddress;
    private String familynumber;
    private String require;
    private String content;
    private  String area;
    private String habit;
    private String other;
    private int agent;
    private Date time;
    private float max_salary;
    private float min_salary;
    private Date brith;

    public Employer(String ename, String esex, int eage, String nation, String nationplace, String education, String idcard, String workplace, String duty, String htnumber, Date httime, String phone, String cellphone, String address, String hkaddress, String serviceaddress, String familyaddress, String familynumber, String require, String content, String area, String habit, String other, Integer agent, Date time) {
        this.ename = ename;
        this.esex = esex;
        this.eage = eage;
        this.nation = nation;
        this.nationplace = nationplace;
        this.education = education;
        this.idcard = idcard;
        this.workplace = workplace;
        this.duty = duty;
        this.htnumber = htnumber;
        this.httime = httime;
        this.phone = phone;
        this.cellphone = cellphone;
        this.address = address;
        this.hkaddress = hkaddress;
        this.serviceaddress = serviceaddress;
        this.familyaddress = familyaddress;
        this.familynumber = familynumber;
        this.require = require;
        this.content = content;
        this.area = area;
        this.habit = habit;
        this.other = other;
        this.agent = agent;
        this.time = time;
    }

    public Employer() {
    }

    public Employer(String ename) {
        this.ename = ename;
    }

    public Employer(String ename, String esex, String phone) {
        this.ename = ename;
        this.esex = esex;
        this.phone = phone;
    }

    public Employer(int eid,   Company company, String ename, String esex, int eage, String nation, String nationplace, String education, String idcard, String workplace, String duty, String htnumber, Date httime, String phone, String cellphone, String address, String hkaddress, String serviceaddress, String familyaddress, String familynumber, String require, String content, String area, String habit, String other, Integer agent, Date time, float max_salary, float min_salary, Date brith) {
        this.eid = eid;
        this.company = company;
        this.ename = ename;
        this.esex = esex;
        this.eage = eage;
        this.nation = nation;
        this.nationplace = nationplace;
        this.education = education;
        this.idcard = idcard;
        this.workplace = workplace;
        this.duty = duty;
        this.htnumber = htnumber;
        this.httime = httime;
        this.phone = phone;
        this.cellphone = cellphone;
        this.address = address;
        this.hkaddress = hkaddress;
        this.serviceaddress = serviceaddress;
        this.familyaddress = familyaddress;
        this.familynumber = familynumber;
        this.require = require;
        this.content = content;
        this.area = area;
        this.habit = habit;
        this.other = other;
        this.agent = agent;
        this.time = time;
        this.max_salary = max_salary;
        this.min_salary = min_salary;
        this.brith = brith;
    }

    public Employer(String ename, String esex, int eage, String nation, String nationplace, String education, String idcard, String workplace, String duty, String cellphone, String address, String hkaddress, String serviceaddress, String familyaddress, String familynumber, String content, String area, String habit, String other, int agent, float max_salary, float min_salary) {
        this.ename = ename;
        this.esex = esex;
        this.eage = eage;
        this.nation = nation;
        this.nationplace = nationplace;
        this.education = education;
        this.idcard = idcard;
        this.workplace = workplace;
        this.duty = duty;
        this.cellphone = cellphone;
        this.address = address;
        this.hkaddress = hkaddress;
        this.serviceaddress = serviceaddress;
        this.familyaddress = familyaddress;
        this.familynumber = familynumber;
        this.content = content;
        this.area = area;
        this.habit = habit;
        this.other = other;
        this.agent = agent;
        this.max_salary = max_salary;
        this.min_salary = min_salary;
    }




    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }


    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }


    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getEsex() {
        return esex;
    }

    public void setEsex(String esex) {
        this.esex = esex;
    }

    public int getEage() {
        return eage;
    }

    public void setEage(int eage) {
        this.eage = eage;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getNationplace() {
        return nationplace;
    }

    public void setNationplace(String nationplace) {
        this.nationplace = nationplace;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getWorkplace() {
        return workplace;
    }

    public void setWorkplace(String workplace) {
        this.workplace = workplace;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public String getHtnumber() {
        return htnumber;
    }

    public void setHtnumber(String htnumber) {
        this.htnumber = htnumber;
    }

    public Date getHttime() {
        return httime;
    }

    public void setHttime(Date httime) {
        this.httime = httime;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getHkaddress() {
        return hkaddress;
    }

    public void setHkaddress(String hkaddress) {
        this.hkaddress = hkaddress;
    }

    public String getServiceaddress() {
        return serviceaddress;
    }

    public void setServiceaddress(String serviceaddress) {
        this.serviceaddress = serviceaddress;
    }

    public String getFamilyaddress() {
        return familyaddress;
    }

    public void setFamilyaddress(String familyaddress) {
        this.familyaddress = familyaddress;
    }

    public String getFamilynumber() {
        return familynumber;
    }

    public void setFamilynumber(String familynumber) {
        this.familynumber = familynumber;
    }

    public String getRequire() {
        return require;
    }

    public void setRequire(String require) {
        this.require = require;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getHabit() {
        return habit;
    }

    public void setHabit(String habit) {
        this.habit = habit;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    public int getAgent() {
        return agent;
    }

    public void setAgent(Integer agent) {
        this.agent = agent;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public float getMax_salary() {
        return max_salary;
    }

    public void setMax_salary(float max_salary) {
        this.max_salary = max_salary;
    }

    public float getMin_salary() {
        return min_salary;
    }

    public void setMin_salary(float min_salary) {
        this.min_salary = min_salary;
    }

    public Date getBrith() {
        return brith;
    }

    public void setBrith(Date brith) {
        this.brith = brith;
    }

}
