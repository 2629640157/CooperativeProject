package com.ydgk.communityServices.dao;

import com.ydgk.communityServices.entity.Message;
import com.ydgk.communityServices.entity.Status;
import com.ydgk.communityServices.util.JdbcUtil;
import com.ydgk.communityServices.util.Page;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-15  10:45
 */
public class statusDao extends BaseDao {
    BaseDao bd = new BaseDao();

    /**
     * 添加
     * @param status
     * @return
     */
    public boolean addStatus(Status status) {
        boolean result = false;
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "insert  into message(`subject`,content,date_time)value (?,?,?)";
        try {
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            Message message = status.getMessage();
            bd.exeUpdate(con,ps,message.getSubject(),message.getContent(),message.getDate_time());
            rs = ps.getGeneratedKeys();
            int  word_id=0;
            if (rs.next()) {
                //封装服装编号,getInt(1)获取自增的主键
                word_id = rs.getInt(1);
                //封装到服装对象的cid里面
                message.setWord_id(word_id);
            }
            ps.close();
            sql = "insert  into `status`(word_id,sender,state)value (?,?,?)";
            ps = con.prepareStatement(sql);
            bd.exeUpdate(con,ps,message.getWord_id(),status.getSender(),status.getState());
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
     * 获取所有sender
     *
     * @return
     */
   /* public List<Integer> querySenders() {
        List<Integer> senders = new ArrayList<>();
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select sender FROM `status`";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps);
            while (rs != null && rs.next()) {
                senders.add(rs.getInt(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }
        return senders;
    }*/

    /**
     * 获取内部短消息数量
     *
     * @return
     */
    public int StatusCounts(int sender, int state) {
        int i = 0;
        String condition = getCondition(sender, state);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select  count(*) FROM `status` " + condition;
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
     * 业务管理-->内部短消息
     * 全查询+模糊查询+分页
     *
     * @param sender
     * @param state
     * @param page
     * @return
     */

    public List<Status> queryStatus(int sender, int state, Page page) {
        List<Status> informs = new ArrayList<>();
        String condition = getCondition(sender, state);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select id,s.word_id ,sender, accept ,state ,`subject` ,content,date_time FROM `status` s join message m on s.word_id=m.word_id " + condition + " ORDER BY id  limit ?,?";
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps, (page.getPageNow() - 1) * page.getPageSize(), page.getPageSize());
            while (rs != null && rs.next()) {
                Status status = new Status();
                Message message = new Message();
                status.setId(rs.getInt(1));
                message.setWord_id(rs.getInt(2));
                status.setSender(rs.getInt(3));
                status.setAccept(rs.getInt(4));
                status.setState(rs.getInt(5));
                message.setSubject(rs.getString(6));
                message.setContent(rs.getString(7));
                message.setDate_time(rs.getDate(8));
                status.setMessage(message);
                informs.add(status);
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
    private String getCondition(int sender, int state) {
        String condition = "";
        List<String> conditionStr = new ArrayList<>();
        String senderCondition = "";
        String stateCondition = "";
        if (sender != 0) {
            senderCondition = " sender = " + sender;
            conditionStr.add(senderCondition);
        }
        if (state != 0) {
            stateCondition = " state =" + state;
            conditionStr.add(stateCondition);
        }
        if (conditionStr.size() > 0) {
            for (int i = 0; i < conditionStr.size(); i++) {
                if (i == 0) {
                    condition = " where " + conditionStr.get(i);
                } else {
                    condition = condition + " and " + conditionStr.get(i);
                }
            }
        }
        return condition;
    }


}
