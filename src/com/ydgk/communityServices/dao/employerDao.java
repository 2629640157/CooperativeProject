package com.ydgk.communityServices.dao;

import com.ydgk.communityServices.entity.Employer;
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
     * @param employer
     * @param eid
     * @return
     */

    public boolean updateEmployer(Employer employer,int eid) {
        boolean result = false;
        Employer addEmployer = new Employer();
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        String sql = "update employer set ename=?,esex=?,eage=?,nation=?,nativeplace=?,education=?,idcard=?,workplace=?,duty=?,htnumber=?,httime=?,phone=?,cellphone=?,address=?,hkaddress=?,serviceaddress=?,familyaddress=?,familynumber=?,content=?,area=?,habit=?,other=?,`require`=?,agent=?,time=? where eid=?";
        try {
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql);
            bd.exeUpdate(con, ps, employer.getEname(), employer.getEsex(), employer.getEage(), employer.getNation(), employer.getNationplace(), employer.getEducation(), employer.getIdcard(),employer.getWorkplace(), employer.getDuty(), employer.getHtnumber(),employer.getHttime(), employer.getPhone(), employer.getCellphone(), employer.getAddress(), employer.getHkaddress(), employer.getServiceaddress(), employer.getFamilyaddress(), employer.getFamilynumber(), employer.getContent(), employer.getArea(), employer.getHabit(), employer.getOther(), employer.getRequire(), employer.getArea(), employer.getTime(),eid);
            con.commit();
            result=true;
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            bd.closeAll(null,ps, con);
        }
        return result;
    }
    /**
     * 添加一个雇主
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
            bd.exeUpdate(con, ps, employer.getEname(), employer.getEsex(), employer.getEage(), employer.getNation(), employer.getNationplace(), employer.getEducation(), employer.getIdcard(),employer.getWorkplace(), employer.getDuty(), employer.getHtnumber(),employer.getHttime(), employer.getPhone(), employer.getCellphone(), employer.getAddress(), employer.getHkaddress(), employer.getServiceaddress(), employer.getFamilyaddress(), employer.getFamilynumber(), employer.getContent(), employer.getArea(), employer.getHabit(), employer.getOther(), employer.getRequire(), employer.getAgent(), employer.getTime());
            con.commit();
            result=true;
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            bd.closeAll(null,ps, con);
        }
        return result;
    }

    /**
     * 通过did(交易id)查找雇主详细信息
     *
     * @param did
     * @return
     */
    public Employer queryOneClearly(int did) {
        Employer employer = new Employer();
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select  d.eid,ename,esex,eage,nation,nativeplace,education,idcard,workplace,duty,htnumber,httime,phone,cellphone,address,hkaddress,serviceaddress,familyaddress,familynumber,content,area,habit,other,`require`,agent,time  FROM deal d JOIN employer e on d.eid=e.eid WHERE did=?";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps, did);
            if (rs.next()) {
                employer.setEid(rs.getInt(1));
                employer.setEname(rs.getString(2));
                employer.setEsex(rs.getString(3));
                employer.setEage(rs.getInt(4));
                employer.setNation(rs.getString(5));
                employer.setNationplace(rs.getString(6));
                employer.setEducation(rs.getString(7));
                employer.setIdcard(rs.getString(8));
                employer.setWorkplace(rs.getString(9));
                employer.setDuty(rs.getString(10));
                employer.setHtnumber(rs.getString(11));
                employer.setHttime(rs.getTime(12));
                employer.setPhone(rs.getString(13));
                employer.setCellphone(rs.getString(14));
                employer.setAddress(rs.getString(15));
                employer.setHkaddress(rs.getString(16));
                employer.setServiceaddress(rs.getString(17));
                employer.setFamilyaddress(rs.getString(18));
                employer.setFamilynumber(rs.getString(19));
                employer.setContent(rs.getString(20));
                employer.setArea(rs.getString(21));
                employer.setHabit(rs.getString(22));
                employer.setOther(rs.getString(23));
                employer.setRequire(rs.getString(24));
                employer.setArea(rs.getString(25));
                employer.setTime(rs.getTime(26));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return employer;
    }


}
