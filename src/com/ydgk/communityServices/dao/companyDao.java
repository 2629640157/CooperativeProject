package com.ydgk.communityServices.dao;

import com.ydgk.communityServices.entity.*;
import com.ydgk.communityServices.entity.Number;
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
public class companyDao extends  BaseDao {
    BaseDao bd = new BaseDao();
    //消费
    public int xiaoFeiCounts(String cname, String name, String start, String end) {
        int i = 0;
        String condition=getXFCondition(cname,name,start,end);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select  count(*)  FROM company c JOIN number n on c.cid=n.cid join card_record cr on c.cid=cr.cid " +condition;
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
    //查询
    public List<Company> querycardRecord(Page page,String cname,String name,String start, String end) {
        List<Company> companyList = new ArrayList<>();
        String Condition = getXFCondition(cname,name,start,end);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select record_id,cname,`name`,Date_time,Money FROM company c JOIN number n on c.cid=n.cid join card_record cr on c.cid=cr.cid" + Condition + " limit ?,?";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps, (page.getPageNow() - 1) * page.getPageSize(), page.getPageSize());
            while (rs != null && rs.next()) {
                Company company = new Company();
                Number number = new Number();//账号
                CardRecord cardRecord = new CardRecord();//消费
                cardRecord.setRecord_id(rs.getInt(1));
                company.setCanme(rs.getString(2));
                number.setName(rs.getString(3));
                cardRecord.setDate_time(rs.getDate(4));
                cardRecord.setMoney(rs.getInt(5));
                company.setCardRecord(cardRecord);
                company.setNumber(number);
                company.setCardRecord(cardRecord);
                companyList.add(company);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return companyList;
    }

    private String getXFCondition(String cname,String name,String start, String end) {
        String condition = "";
        List<String> conditionStr = new ArrayList<>();
        String cnameCondition = "";
        String nameCondition = "";
        String startCondition = "";
        String endCondition = "";

        if (start != null && !start.equals("")) {
            startCondition = " Date_time > '" + start + "'";
            conditionStr.add(startCondition);
        }
        if (end != null && !end.equals("")) {
            endCondition = " Date_time < '" + end+ "'" ;
            conditionStr.add(endCondition);
        }

        if ( cname!=null&&!cname.equals("")) {
            cnameCondition = " cname like '%" + cname + "%'";
            conditionStr.add(cnameCondition);
        }
        if ( name!=null&&!name.equals("")) {
            nameCondition = " `name` like '%" + name + "%'";
            conditionStr.add(nameCondition);
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








    //充值
    public  boolean addMoney(Integer count,String remake,int cid){
        boolean result = false;
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        String sql = "UPDATE recharge_card SET balance=balance+? where cid=?;";
        try {
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql);
            bd.exeUpdate(con, ps,count,cid);
            ps.close();
            sql = "UPDATE recharge_record SET remark=? where cid=?";
            ps = con.prepareStatement(sql);
            bd.exeUpdate(con,ps,remake,cid);
            con.commit();
            result=true;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            bd.closeAll(null,ps,con);
        }
        return  result;
    }
   //数量
    public int companyCounts(String cname,String name) {
        int i = 0;
        String condition=getCondition(cname,name);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select  count(*)  FROM company c join recharge_card rc on c.cid=rc.cid join recharge_record  rr on rr.cid=c.cid join number n on n.cid=c.cid " +condition;
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
    //查询
    public List<Company> queryrechaRgeRecord(Page page,String cname,String name) {
        List<Company> companyList = new ArrayList<>();
        String Condition = getCondition(cname,name);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select recharge_id,cname,`name`,times,money_norm,total_amount,balance,person,remark,c.cid FROM company c join recharge_card rc on c.cid=rc.cid join recharge_record  rr on rr.cid=c.cid join number n on n.cid=c.cid" + Condition + " limit ?,?";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps, (page.getPageNow() - 1) * page.getPageSize(), page.getPageSize());
            while (rs != null && rs.next()) {
                Company company = new Company();
                Number number = new Number();//账号
                RechargeCard rechargeCard = new RechargeCard();//充值卡
                RechargeRecord rechargeRecord = new RechargeRecord();//充值记录
                rechargeRecord.setRecharge_id(rs.getInt(1));
                company.setCanme(rs.getString(2));
                number.setName(rs.getString(3));
                rechargeCard.setTimes(rs.getInt(4));
                rechargeCard.setMoney_norm(rs.getInt(5));
                rechargeCard.setTotal_amount(rs.getInt(6));
                rechargeCard.setBalance(rs.getInt(7));
                rechargeRecord.setPerson(rs.getInt(8));
                rechargeRecord.setRemark(rs.getString(9));
                company.setCid(rs.getInt(10));
                company.setRechargeCard(rechargeCard);
                company.setRechargeRecord(rechargeRecord);
                company.setNumber(number);
                companyList.add(company);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return companyList;
    }

    private String getCondition(String cname,String name) {
        String condition = "";
        List<String> conditionStr = new ArrayList<>();
        String cnameCondition = "";
        String nameCondition = "";
        if ( cname!=null&&!cname.equals("")) {
            cnameCondition = " cname like '%" + cname + "%'";
            conditionStr.add(cnameCondition);
        }
        if ( name!=null&&!name.equals("")) {
            nameCondition = " `name` like '%" + name + "%'";
            conditionStr.add(nameCondition);
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
