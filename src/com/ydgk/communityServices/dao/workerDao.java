package com.ydgk.communityServices.dao;

import com.ydgk.communityServices.entity.Company;
import com.ydgk.communityServices.entity.Worker;
import com.ydgk.communityServices.util.JdbcUtil;

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
public class workerDao extends BaseDao {
    BaseDao bd = new BaseDao();

    //查询worker
    public List<Worker> queryWorkers(Worker worker, String worktimeStr, int wageStart, int wageEnd, String[] languages, String[] zjstatus, String[] grskills) {
        List<Worker> workerList = new ArrayList<>();
        String wCondition = getWCondition(worker, worktimeStr, wageStart, wageEnd, languages, zjstatus, grskills);
        Connection con = JdbcUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select wid,cid,wname,wage,idcard,cellphone,phone,defect from worker " + wCondition;
        try {
            ps = con.prepareStatement(sql);
            rs = bd.exeQuery(con, ps);
            while (rs!=null&&rs.next()) {
                Worker workerBean = new Worker();
                workerBean.setWid(rs.getInt(1));
                Company company = new Company();
                company.setCid(rs.getInt(2));
                workerBean.setCompany(company);
                workerBean.setWname(rs.getString(3));
                workerBean.setIdcard(rs.getString(4));
                workerBean.setSellphone(rs.getString(5));
                workerBean.setPhone(rs.getString(6));
                workerBean.setDefect(rs.getString(7));
                workerList.add(workerBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            bd.closeAll(rs, ps, con);
        }

        return workerList;
    }

    //获取模糊查询条件
    private String getWCondition(Worker worker, String worktimeStr, int wageStart, int wageEnd, String[] languages, String[] zjstatus, String[] grskills) {
        String condition = "";
        List<String> conditionStr = new ArrayList<>();
        String wnameCondition = "";
        String wsexCondition = "";
        String wageStartCondition = " wage >= " + wageStart;
        conditionStr.add(wageStartCondition);
        String wageEndCondition = " wage <= " + wageEnd;
        conditionStr.add(wageEndCondition);
        String worktimeCondition = "";
        String statusCondition = "";
        String hystatusCondition = "";
        String languagesCondition = "";
        String zjstatusCondition = "";
        String grskillsCondition = "";
        if (worker.getWname() != null && !worker.getWname().equals("")) {
            wnameCondition = " wname like '%" + worker.getWname() + "%'";
            conditionStr.add(wnameCondition);
        }
        if (worker.getWsex() != null && !worker.getWsex().equals("")) {
            wsexCondition = " wsex = '" + worker.getWsex() + "'";
            conditionStr.add(wsexCondition);
        }
        if (worktimeStr != null && !worktimeStr.equals("")) {
            worktimeCondition = " worktime = '" + worktimeStr + "'";
            conditionStr.add(worktimeCondition);
        }
        if (worker.getStatus() != null && !worker.getStatus().equals("")) {
            statusCondition = " status = '" + worker.getStatus() + "'";
            conditionStr.add(statusCondition);
        }
        if (worker.getHystatus() != null && !worker.getHystatus().equals("")) {
            hystatusCondition = " hystatus = '" + worker.getHystatus() + "'";
            conditionStr.add(hystatusCondition);
        }

        for (int i = 0; i < languages.length; i++) {
            if (languages[languages.length-1].equals("")){
                if (languages[i] != null && !languages[i].equals("")) {
                    if (i == languages.length -2) {
                        languagesCondition = languagesCondition + " language like '%" + languages[i] + "%'";
                    } else {
                        languagesCondition = languagesCondition + " language like '%" + languages[i] + "%' and ";
                    }
                }
            }else {
                if (languages[i] != null && !languages[i].equals("")) {
                    if (i == languages.length -1) {
                        languagesCondition = languagesCondition + " language like '%" + languages[i] + "%'";
                    } else {
                        languagesCondition = languagesCondition + " language like '%" + languages[i] + "%' and ";
                    }
                }
            }
        }
        conditionStr.add(languagesCondition);
        if (zjstatus!=null){
            for (int i = 0; i < zjstatus.length; i++) {
                if (languages[languages.length-1].equals("")){
                    if (zjstatus[i] != null && !zjstatus[i].equals("")) {
                        if (i == zjstatus.length - 2) {
                            zjstatusCondition = zjstatusCondition + " zjstatus like '%" + zjstatus[i] + "%'";
                        } else {
                            zjstatusCondition = zjstatusCondition + " zjstatus like '%" + zjstatus[i] + "%' and ";
                        }
                    }
                }else {
                    if (zjstatus[i] != null && !zjstatus[i].equals("")) {
                        if (i == zjstatus.length - 2) {
                            zjstatusCondition = zjstatusCondition + " zjstatus like '%" + zjstatus[i] + "%'";
                        } else {
                            zjstatusCondition = zjstatusCondition + " zjstatus like '%" + zjstatus[i] + "%' and ";
                        }
                    }
                }
            }
            conditionStr.add(zjstatusCondition);
        }
        for (int i = 0; i < grskills.length; i++) {

            if (grskills[i] != null && !grskills[i].equals("")) {
                if (i == grskills.length - 1) {
                    grskillsCondition = grskillsCondition + " grskills like '%" + grskills[i] + "%'";
                } else {
                    grskillsCondition = grskillsCondition + " grskills like '%" + grskills[i] + "%' and";
                }
            }
        }
        conditionStr.add(grskillsCondition);
        if (conditionStr.size() > 0) {
            for (int i = 0; i < conditionStr.size(); i++) {
                if (!conditionStr.get(i).equals("")){
                    if (i == 0) {
                        condition = " where " + conditionStr.get(i);
                    } else {
                        condition = condition + " and " + conditionStr.get(i);
                    }
                }else {
                    continue;
                }
            }
        }
        return condition;
    }

}
