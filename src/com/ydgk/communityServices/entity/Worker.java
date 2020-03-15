package com.ydgk.communityServices.entity;

/**
 * @author gentleman
 * @description ...
 * @create 2020-03-14-16:15
 */
public class Worker {
    private int wid;
    private String wname;
    private String wsex;
    private String idcard;
    private Date birth;
    private int wage;
    private int hige;
    private String sellphone;
    private String phone;
    private String type;
    private Date worktime;
    private String defect;
    private String photo;
    private String jhddress;
    private String address;
    private String card;
    private String bxnumber;
    private String language;
    private String status;
    private String hystatus;
    private String zjstatus;
    private String tjstatus;
    private Date tjtime;
    private String grskills;
    private String jieshao;
    private Date timerequire;
    private String salaryrequire;
    private String live;
    private String eat;
    private Date starttime;
    private int companyid;
    //4个外键
    private Company company;
    private  Experience experience;
    private  Family family;
    private  Train train;

    public Worker() {
    }

    public Worker(int wid, Company company, String wname, String wsex, String idcard, Date birth, int wage, int hige, String sellphone, String phone, String type, Date worktime, String defect, String photo, String jhddress, String address, String card, String bxnumber, String language, String status, String hystatus, String zjstatus, String tjstatus, Date tjtime, String grskills, String jieshao, Date timerequire, String salaryrequire, String live, String eat, Date starttime, int companyid, Experience experience, Family family, Train train) {
        this.wid = wid;
        this.company = company;
        this.wname = wname;
        this.wsex = wsex;
        this.idcard = idcard;
        this.birth = birth;
        this.wage = wage;
        this.hige = hige;
        this.sellphone = sellphone;
        this.phone = phone;
        this.type = type;
        this.worktime = worktime;
        this.defect = defect;
        this.photo = photo;
        this.jhddress = jhddress;
        this.address = address;
        this.card = card;
        this.bxnumber = bxnumber;
        this.language = language;
        this.status = status;
        this.hystatus = hystatus;
        this.zjstatus = zjstatus;
        this.tjstatus = tjstatus;
        this.tjtime = tjtime;
        this.grskills = grskills;
        this.jieshao = jieshao;
        this.timerequire = timerequire;
        this.salaryrequire = salaryrequire;
        this.live = live;
        this.eat = eat;
        this.starttime = starttime;
        this.companyid = companyid;
        this.experience = experience;
        this.family = family;
        this.train = train;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public String getWname() {
        return wname;
    }

    public void setWname(String wname) {
        this.wname = wname;
    }

    public String getWsex() {
        return wsex;
    }

    public void setWsex(String wsex) {
        this.wsex = wsex;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public int getWage() {
        return wage;
    }

    public void setWage(int wage) {
        this.wage = wage;
    }

    public int getHige() {
        return hige;
    }

    public void setHige(int hige) {
        this.hige = hige;
    }

    public String getSellphone() {
        return sellphone;
    }

    public void setSellphone(String sellphone) {
        this.sellphone = sellphone;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getWorktime() {
        return worktime;
    }

    public void setWorktime(Date worktime) {
        this.worktime = worktime;
    }

    public String getDefect() {
        return defect;
    }

    public void setDefect(String defect) {
        this.defect = defect;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getJhddress() {
        return jhddress;
    }

    public void setJhddress(String jhddress) {
        this.jhddress = jhddress;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getBxnumber() {
        return bxnumber;
    }

    public void setBxnumber(String bxnumber) {
        this.bxnumber = bxnumber;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getHystatus() {
        return hystatus;
    }

    public void setHystatus(String hystatus) {
        this.hystatus = hystatus;
    }

    public String getZjstatus() {
        return zjstatus;
    }

    public void setZjstatus(String zjstatus) {
        this.zjstatus = zjstatus;
    }

    public String getTjstatus() {
        return tjstatus;
    }

    public void setTjstatus(String tjstatus) {
        this.tjstatus = tjstatus;
    }

    public Date getTjtime() {
        return tjtime;
    }

    public void setTjtime(Date tjtime) {
        this.tjtime = tjtime;
    }

    public String getGrskills() {
        return grskills;
    }

    public void setGrskills(String grskills) {
        this.grskills = grskills;
    }

    public String getJieshao() {
        return jieshao;
    }

    public void setJieshao(String jieshao) {
        this.jieshao = jieshao;
    }

    public Date getTimerequire() {
        return timerequire;
    }

    public void setTimerequire(Date timerequire) {
        this.timerequire = timerequire;
    }

    public String getSalaryrequire() {
        return salaryrequire;
    }

    public void setSalaryrequire(String salaryrequire) {
        this.salaryrequire = salaryrequire;
    }

    public String getLive() {
        return live;
    }

    public void setLive(String live) {
        this.live = live;
    }

    public String getEat() {
        return eat;
    }

    public void setEat(String eat) {
        this.eat = eat;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public int getCompanyid() {
        return companyid;
    }

    public void setCompanyid(int companyid) {
        this.companyid = companyid;
    }

    public Experience getExperience() {
        return experience;
    }

    public void setExperience(Experience experience) {
        this.experience = experience;
    }

    public Family getFamily() {
        return family;
    }

    public void setFamily(Family family) {
        this.family = family;
    }

    public Train getTrain() {
        return train;
    }

    public void setTrain(Train train) {
        this.train = train;
    }
}
