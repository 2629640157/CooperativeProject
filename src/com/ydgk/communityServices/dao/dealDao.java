package com.ydgk.communityServices.dao;

import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;
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

    /**
     * 业务管理-->客户管理(雇主信息)
     * 全查询+模糊查询+分页
     *
     * @param deal
     * @return
     */
    public List<Deal> queryDeals(Deal deal, Page page) {
        List<Deal> dealList = new ArrayList<>();
        String condition = getCondition(deal);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT d.did,ename,esex,eage,dtype,min_salary ,max_salary,`status`,submitdate FROM deal d JOIN employer e on d.eid=e.eid" + condition;
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps);
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
    public String getCondition(Deal deal) {
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
                    condition=" where "+conditionStr.get(i);
                }else {
                    condition=" and "+conditionStr.get(i);
                }
            }
        }
        return condition;
    }
}
