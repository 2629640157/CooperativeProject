package com.ydgk.communityServices.dao;

import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;
import com.ydgk.communityServices.entity.Worker;
import com.ydgk.communityServices.util.JdbcUtil;
import com.ydgk.communityServices.util.Page;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-15  10:45
 */
public class dealDao extends BaseDao {
    BaseDao bd = new BaseDao();
    //业务管理--> 用工管理

    /**
     *业务管理-->用工管理(工人信息)
     * 全查询+模糊查询+分页
     * @param deal
     * @param page
     * @return
     */
    public List<Deal> queryWorkerDeals(Deal deal, Page page,String start,String end) {
        List<Deal> dealList = new ArrayList<>();
        String condition = getWCondition(deal,start,end);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "  select d.did,e.eid,ename,e.phone,e.cellphone, w.wid,wname,w.phone,w.cellphone,salary,dtype,w.`status`,d.starttime  from worker w JOIN deal d on w.wid=d.wid join employer e on e.eid=d.eid" + condition +" limit ?,?";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps,(page.getPageNow()-1)*page.getPageSize(),page.getPageSize());
            while (rs != null && rs.next()) {
                Deal dealShow = new Deal();
                Employer employer = new Employer();
                Worker worker=new Worker();
                dealShow.setDid(rs.getInt(1));
                employer.setEid(rs.getInt(2));
                employer.setEname(rs.getString(3));
                employer.setPhone(rs.getString(4));
                employer.setCellphone(rs.getString(5));
                worker.setWid(rs.getInt(6));
                worker.setWname(rs.getString(7));
                worker.setPhone(rs.getString(8));
                worker.setSellphone(rs.getString(9));
                dealShow.setSalary(rs.getInt(10));
                dealShow.setKinds(rs.getString(11));
                worker.setStatus(rs.getString(12));
                dealShow.setStarttime(rs.getDate(13));
                dealShow.setWorker(worker);
                dealShow.setEmployer(employer);
                dealList.add(dealShow);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return dealList;
    }

    /**
     * 获取交易中数量
     *
     * @return
     */
    public int workerCounts(Deal deal,String start,String end) {
        int i = 0;
        String condition=getWCondition(deal,start,end);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select  count(*)  from worker w JOIN deal d on w.wid=d.wid join employer e on e.eid=d.eid " +condition;
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps);
            if (rs.next()) {
                i = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return i;
    }

    /**
     * 获取模糊查询条件
     *
     * @param deal
     * @return
     */
    private String getWCondition(Deal deal,String start,String end) {
        String condition = "";
        List<String> conditionStr = new ArrayList<>();
        String enameCondition = "";
        String startCondition = "";
        String endCondition = "";
        String wnameCondition = "";
        String statusCondition = "";

        if (deal.getEmployer().getEname() != null && !deal.getEmployer().getEname().equals("")) {
            enameCondition = " ename like '%" + deal.getEmployer().getEname() + "%'";
            conditionStr.add(enameCondition);
        }
        if (start != null && !start.equals("")) {
            startCondition = " d.starttime > '" + start + "'";
            conditionStr.add(startCondition);
        }
        if (end != null && !end.equals("")) {
            endCondition = " d.starttime < '" + end+ "'" ;
            conditionStr.add(endCondition);
        }
        if (deal.getWorker().getWname() != null && !deal.getWorker().getWname().equals("")) {
            wnameCondition = " ename like '%" + deal.getWorker().getWname()  + "%'";
            conditionStr.add(wnameCondition);
        }
        if (deal.getWorker().getStatus() != null && !deal.getWorker().getStatus().equals("")) {
            statusCondition = " w.`status` = '" +deal.getWorker().getStatus() + "'";
            conditionStr.add(statusCondition);
        }

        if (conditionStr.size() > 0) {
            for (int i = 0; i < conditionStr.size(); i++) {
                if (i == 0) {
                    condition = " where " + conditionStr.get(i);
                } else {
                    condition =condition+ " and " + conditionStr.get(i);
                }
            }
        }
        return condition;
    }






    //业务管理-->客户管理



    /**
     * 历史档案功能(通过雇主id找到他的所有交易记录)
     * @param eid
     * @param page
     * @return
     */
    public List<Deal> queryDealsByEmployer (int eid, Page page) {
        List<Deal> dealList = new ArrayList<>();
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = " select  w.wid,wname,wsex,introducefee,d.starttime,worktime,dtype,salary,usefultime,time,w.cellphone  from worker w JOIN deal d on w.wid=d.wid join employer e on e.eid=d.eid WHERE e.eid=? limit ?,?";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps,eid,(page.getPageNow()-1)*page.getPageSize(),page.getPageSize());
            while (rs != null && rs.next()) {
                Deal dealShow = new Deal();
                Employer employer = new Employer();
                Worker worker=new Worker();
                worker.setWid(rs.getInt(1));
                worker.setWname(rs.getString(2));
                worker.setWsex(rs.getString(3));
                dealShow.setIntroducefee(rs.getString(4));
                dealShow.setStarttime(rs.getDate(5));
                worker.setWorktime(rs.getDate(6));
                dealShow.setKinds(rs.getString(7));
                dealShow.setSalary(rs.getInt(8));
                dealShow.setUsefultime(rs.getDate(9));
                employer.setTime(rs.getDate(10));
                worker.setSellphone(rs.getString(11));
                dealShow.setWorker(worker);
                dealShow.setEmployer(employer);
                dealList.add(dealShow);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return dealList;
    }

    /**
     * 根据雇主id找到具有员工的交易数量
     * @param eid
     * @return
     */
    public int dealCountsByEmployer(int eid) {
        int i = 0;
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select  count(*) FROM deal d JOIN employer e on d.eid=e.eid join worker w on w.wid=d.wid where  e.eid=?" ;
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps,eid);
            if (rs!=null&&rs.next()) {
                i = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return i;
    }
    /**
     * 获取交易中数量
     *
     * @return
     */
    public int dealCounts(Deal deal) {
        int i = 0;
        String condition=getECondition(deal);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select  count(*) FROM deal d JOIN employer e on d.eid=e.eid " +condition;
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps);
            if (rs.next()) {
                i = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return i;
    }

    /**
     * 业务管理-->客户管理(雇主信息)
     * 全查询+模糊查询+分页
     *
     * @param deal
     * @return
     */
    public List<Deal> queryDeals(Deal deal, Page page) {
        List<Deal> dealList = new ArrayList<>();
        String condition = getECondition(deal);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT d.did,ename,esex,eage,dtype,min_salary ,max_salary,`status`,submitdate FROM deal d JOIN employer e on d.eid=e.eid" + condition +" limit ?,?";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps,(page.getPageNow()-1)*page.getPageSize(),page.getPageSize());
            while (rs != null && rs.next()) {
                Deal dealShow = new Deal();
                Employer employer = new Employer();
                dealShow.setDid(rs.getInt(1));
                employer.setEname(rs.getString(2));
                employer.setEsex(rs.getString(3));
                employer.setEage(rs.getInt(4));
                dealShow.setKinds(rs.getString(5));
                employer.setMin_salary(rs.getInt(6));
                employer.setMax_salary(rs.getInt(7));
                dealShow.setEmployer(employer);
                dealShow.setStatus(rs.getString(8));
                dealShow.setSubmitdate(rs.getDate(9));
                dealList.add(dealShow);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return dealList;
    }

    /**
     * 获取模糊查询条件
     *
     * @param deal
     * @return
     */
    private String getECondition(Deal deal) {
        String condition = "";
        List<String> conditionStr = new ArrayList<>();
        String enameCondition = "";
        String esexCondition = "";
        String phoneCondition = "";
        String statusCondition = "";
        String kindsCondition = "";
        if (deal.getEmployer().getEname() != null && !deal.getEmployer().getEname().equals("")) {
            enameCondition = " ename like '%" + deal.getEmployer().getEname() + "%'";
            conditionStr.add(enameCondition);
        }
        if (deal.getEmployer().getEsex() != null && !deal.getEmployer().getEsex().equals("")) {
            esexCondition = " esex = '" + deal.getEmployer().getEsex() + "'";
            conditionStr.add(esexCondition);
        }
        if (deal.getEmployer().getPhone() != null && !deal.getEmployer().getPhone().equals("")) {
            phoneCondition = " phone = '" + deal.getEmployer().getPhone() + "'";
            conditionStr.add(phoneCondition);
        }
        if (deal.getStatus() != null && !deal.getStatus().equals("")) {
            statusCondition = " `status` = '" + deal.getStatus() + "'";
            conditionStr.add(statusCondition);
        }
        if (deal.getStatus() != null && !deal.getKinds().equals("")) {
            kindsCondition = " dtype ='" + deal.getKinds() + "'";
            conditionStr.add(kindsCondition);
        }
        if (conditionStr.size() > 0) {
            for (int i = 0; i < conditionStr.size(); i++) {
                if (i == 0) {
                    condition = " where " + conditionStr.get(i);
                } else {
                    condition =condition+ " and " + conditionStr.get(i);
                }
            }
        }
        return condition;
    }
}
