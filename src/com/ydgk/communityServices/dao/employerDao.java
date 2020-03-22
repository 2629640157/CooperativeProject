package com.ydgk.communityServices.dao;

import com.ydgk.communityServices.entity.Company;
import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;
import com.ydgk.communityServices.entity.Worker;
import com.ydgk.communityServices.util.JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 游斌
 * @create 2020-03-15  10:45
 */
public class employerDao extends BaseDao {
    BaseDao bd = new BaseDao();

    /**
     * 修改雇主信息
     *
     * @param employer
     * @param eid
     * @return
     */

    public boolean updateEmployer(Employer employer, int eid) {
        boolean result = false;
        Employer addEmployer = new Employer();
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        String sql = "update employer set ename=?,esex=?,eage=?,nation=?,nativeplace=?,education=?,idcard=?,workplace=?,duty=?,htnumber=?,httime=?,phone=?,cellphone=?,address=?,hkaddress=?,serviceaddress=?,familyaddress=?,familynumber=?,content=?,area=?,habit=?,other=?,`require`=?,agent=?,time=? where eid=?";
        try {
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql);
            bd.exeUpdate(con, ps, employer.getEname(), employer.getEsex(), employer.getEage(), employer.getNation(), employer.getNationplace(),employer.getEducation(), employer.getIdcard(), employer.getWorkplace(), employer.getDuty(),employer.getHtnumber(), employer.getHttime(), employer.getPhone(), employer.getCellphone(), employer.getAddress(), employer.getHkaddress(), employer.getServiceaddress(), employer.getFamilyaddress(), employer.getFamilynumber(), employer.getContent(), employer.getArea(), employer.getHabit(), employer.getOther(), employer.getRequire(), employer.getTime(), employer.getAgent(), eid);
            con.commit();
            result = true;
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            bd.closeAll(null, ps, con);
        }
        return result;
    }

    /**
     * 添加一个雇主
     *
     * @param employer
     * @return
     */
    public boolean addEmployer(Employer employer) {
        boolean result = false;
        Employer addEmployer = new Employer();
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT into employer(ename,esex,eage,nation,nativeplace,education,idcard,workplace,duty,htnumber,httime,phone,cellphone,address,hkaddress,serviceaddress,familyaddress,familynumber,content,area,habit,other,`require`,agent,time) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
        try {
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql);
            bd.exeUpdate(con, ps, employer.getEname(), employer.getEsex(), employer.getEage(), employer.getNation(), employer.getNationplace(), employer.getEducation(), employer.getIdcard(), employer.getWorkplace(), employer.getDuty(), employer.getHtnumber(), employer.getHttime(), employer.getPhone(), employer.getCellphone(), employer.getAddress(), employer.getHkaddress(), employer.getServiceaddress(), employer.getFamilyaddress(), employer.getFamilynumber(), employer.getContent(), employer.getArea(), employer.getHabit(), employer.getOther(), employer.getRequire(), employer.getAgent(), employer.getTime());
            con.commit();
            result = true;
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            bd.closeAll(null, ps, con);
        }
        return result;
    }

    /**
     * 通过did(交易id)查找雇主详细信息
     *
     * @param did
     * @return
     */
    public Deal queryOneClearly(int did) {
        Deal deal = new Deal();
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select d. eid, ename, esex, eage, nation, nativeplace, education, w.idcard, hkaddress, w.phone, w.cellphone, w.address, duty, workplace, min_salary, max_salary, introducefee, dtype, serviceaddress, familyaddress, familynumber, content, area, habit, other,`require`,agent, d.starttime, usefultime, d.`status`, htnumber, httime, time, w.wid, w.cid, wname, wsex, w.idcard, birth, wage, hige, w.cellphone, w.phone, wtype, worktime, defect from employer e join deal d on e.eid = d.eid join worker w on w.wid = d.wid WHERE did = ?";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps, did);
            if (rs!=null&& rs.next()) {
                Employer employer = new Employer();
                employer.setEid(rs.getInt(1));
                employer.setEname(rs.getString(2));
                employer.setEsex(rs.getString(3));
                employer.setEage(rs.getInt(4));
                employer.setNation(rs.getString(5));
                employer.setNationplace(rs.getString(6));
                employer.setEducation(rs.getString(7));
                employer.setIdcard(rs.getString(8));
                employer.setHkaddress(rs.getString(9));
                employer.setPhone(rs.getString(10));
                employer.setCellphone(rs.getString(11));
                employer.setAddress(rs.getString(12));
                employer.setDuty(rs.getString(13));
                employer.setWorkplace(rs.getString(14));
                employer.setMin_salary(rs.getInt(15));
                employer.setMax_salary(rs.getInt(16));
                deal.setIntroducefee(rs.getInt(17));
                deal.setKinds(rs.getString(18));
                employer.setServiceaddress(rs.getString(19));
                employer.setFamilyaddress(rs.getString(20));
                employer.setFamilynumber(rs.getString(21));
                employer.setContent(rs.getString(22));
                employer.setArea(rs.getString(23));
                employer.setHabit(rs.getString(24));
                employer.setOther(rs.getString(25));
                employer.setRequire(rs.getString(26));
                employer.setAgent(rs.getInt(27));
                deal.setStarttime(rs.getDate(28));
                deal.setUsefultime(rs.getDate(29));
                deal.setStatus(rs.getString(30));
                employer.setHtnumber(rs.getString(31));
                employer.setHttime(rs.getDate(32));
                employer.setTime(rs.getDate(33));
                Worker worker=new Worker();
                worker.setWid(rs.getInt(34));
                Company company=new Company();
                company.setCid(rs.getInt(35));
                worker.setCompany(company);
                worker.setWname(rs.getString(36));
                worker.setWsex(rs.getString(37));
                worker.setIdcard(rs.getString(38));
                worker.setBirth(rs.getDate(39));
                worker.setWage(rs.getInt(40));
                worker.setHige(rs.getInt(41));
                worker.setSellphone(rs.getString(42));
                worker.setPhone(rs.getString(43));
                worker.setKinds(rs.getString(44));
                worker.setWorktime(rs.getDate(45));
                worker.setDefect(rs.getString(46));
                deal.setWorker(worker);
                deal.setEmployer(employer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return deal;
    }


}
