package com.ydgk.communityServices.dao;

import com.ydgk.communityServices.entity.Inform;
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
public class informDao extends  BaseDao {
    BaseDao bd = new BaseDao();
    /**
     * 获取总通知数量
     *
     * @return
     */
    public int informCounts(String start,String end) {
        int i = 0;
        String condition = getCondition(start,end);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select  count(*) FROM inform "+condition;
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
     * 业务管理-->每日通知
     *       全查询+模糊查询+分页
     * @param start
     * @param end
     * @param page
     * @return
     */
    public List<Inform> queryDeals(String start, String end,Page page) {
        List<Inform> informs= new ArrayList<>();
        String condition = getCondition(start,end);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM inform" + condition +" limit ?,?";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps,(page.getPageNow()-1)*page.getPageSize(),page.getPageSize());
            while (rs != null && rs.next()) {
                Inform inform=new Inform();
                inform.setIid(rs.getInt(1));
                inform.setContent(rs.getString(2));
                inform.setInformdate(rs.getDate(3));
                informs.add(inform);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return informs;
    }

    /**
     * 获取模糊查询条件
     *
     * @param
     * @return
     */
    private String getCondition(String start,String end) {
        String condition = "";
        List<String> conditionStr = new ArrayList<>();
        String startCondition = "";
        String endCondition = "";

        if (start != null && !start.equals("")) {
            startCondition = " informdate > '" + start + "'";
            conditionStr.add(startCondition);
        }
        if (end != null && !end.equals("")) {
            endCondition = " informdate < '" + end+ "'" ;
            conditionStr.add(endCondition);
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
