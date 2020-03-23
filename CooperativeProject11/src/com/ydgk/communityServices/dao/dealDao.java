package com.ydgk.communityServices.dao;


import com.ydgk.communityServices.entity.*;
import com.ydgk.communityServices.util.JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class dealDao {
    private BaseDao dao=new BaseDao();

    //收费管理模糊查询结果集
    public List<Deal>queryDateTime(Deal deal) {
        String sql= "select did ,ename,introducefee,submitdate,wname,cname,shuoming from deal de,worker wo ,employer em ,company cm\n" +
                "where de.wid = wo.wid and \n" +
                "de.eid = em.eid and\n" +
                "em.cid = cm.cid ";
        String sqlDate="";
        if (!deal.getSubmitdate().isEmpty()){
            sqlDate=sqlDate+" submitdate like '%" +deal.getSubmitdate()+"%'"+"order by did";
        }
        sql=sql+ " and "+sqlDate;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        List<Deal> dealList = new ArrayList<>();
        try {
            ps = con.prepareStatement(sql);    //得到模糊查询结果集
            rs = dao.exeQuery(con, ps, null);
            while (rs != null && rs.next()) {
                Deal dealBean = new Deal();
                Employer employerBean=new Employer();
                Worker workerBean=new Worker();
                Company companyBean=new Company();
                dealBean.setDid(rs.getString(1));
                employerBean.setEname(rs.getString(2));
                dealBean.setIntroducefee(rs.getString(3));
                dealBean.setSubmitdate(rs.getString(4));
                workerBean.setWname(rs.getString(5));
                companyBean.setCanme(rs.getString(6));
                companyBean.setShuoming(rs.getString(7));
                dealBean.setWorker(workerBean);//那工人表属性set到deal表里面去
                dealBean.setEmployer(employerBean);
                dealBean.setCompany(companyBean);
                dealList.add(dealBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return dealList;
    }



          //收费管理分页和全查询
    public List<Deal>queryGoodAll(int pageNow,int pageSize) {
        String sql = "select did ,ename,introducefee,submitdate,wname,cname,shuoming from deal de,worker wo ,employer em ,company cm\n" +
                "                where de.wid = wo.wid and \n" +
                "                de.eid = em.eid and\n" +
                "                em.cid = cm.cid order by did limit ?,?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        List<Deal> dealList11 = new ArrayList<>();
        try {
            ps = con.prepareStatement(sql);
            rs = dao.exeQuery(con, ps, (pageNow-1)*pageSize,pageSize);//得到结果集
            while (rs != null && rs.next()) {
                 Deal dealBean = new Deal();
                 Employer employerBean=new Employer();
                 Worker workerBean=new Worker();
                 Company companyBean=new Company();
                dealBean.setDid(rs.getString(1));
                employerBean.setEname(rs.getString(2));
                dealBean.setIntroducefee(rs.getString(3));
                dealBean.setSubmitdate(rs.getString(4));
                workerBean.setWname(rs.getString(5));
                companyBean.setCanme(rs.getString(6));
                companyBean.setShuoming(rs.getString(7));
                dealBean.setWorker(workerBean);//那工人表属性set到deal表里面去
                dealBean.setEmployer(employerBean);
                dealBean.setCompany(companyBean);
                dealList11.add(dealBean);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return dealList11;
    }



//得到收费管理的总记录数
    public int findTotalRecord() {
        String sql = "select count(*) from deal";
        int result=0;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        try {
            ps = con.prepareStatement(sql);
            rs = dao.exeQuery(con, ps,null);//得到结果集
            if (rs != null && rs.next()) {
                result=rs.getInt(1);
            }
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return 0;
    }




    //消费管理的消费时间模糊查询
    public List<CardRecord> queryConsumeTime(CardRecord cardrecord) {
        String sql= "select record_id,record_company_name,type,money,Date_time from card_record ";
        String sqlDate="";
         if (!cardrecord.getDate_time().isEmpty()){
            sqlDate=sqlDate+" Date_time like '%" +cardrecord.getDate_time()+"%'"+" order by record_id";
         }
        sql=sql+ " where "+sqlDate;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        List<CardRecord> cardRecordList = new ArrayList<>();
        try {
            ps = con.prepareStatement(sql);    //得到收费管理模糊查询结果集
            rs = dao.exeQuery(con, ps, null);
            while (rs != null && rs.next()) {
                CardRecord cardrecordBean=new CardRecord();
                cardrecordBean.setRecord_id(rs.getInt(1));
                cardrecordBean.setRecord_company_name(rs.getString(2));
                cardrecordBean.setType(rs.getString(3));
                cardrecordBean.setMoney(rs.getFloat(4));
                cardrecordBean.setDate_time(rs.getString(5));
                cardRecordList.add(cardrecordBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return cardRecordList;
    }





    //收费管理分页和全查询
    public List<CardRecord>queryAllConsume(int pageNow,int pageSize) {
        String sql = "select record_id,record_company_name,type,money,Date_time from card_record order by record_id  limit ?,?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        List<CardRecord> cardRecordList = new ArrayList<>();
        try {
            ps = con.prepareStatement(sql);
            rs = dao.exeQuery(con, ps, (pageNow-1)*pageSize,pageSize);//得到结果集
            while (rs != null && rs.next()) {
                CardRecord cardrecordBean=new CardRecord();
                cardrecordBean.setRecord_id(rs.getInt(1));
                cardrecordBean.setRecord_company_name(rs.getString(2));
                cardrecordBean.setType(rs.getString(3));
                cardrecordBean.setMoney(rs.getFloat(4));
                cardrecordBean.setDate_time(rs.getString(5));
                cardRecordList.add(cardrecordBean);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return cardRecordList;
    }




    //得到消费管理的总记录数
    public int ConsumefindTotalRecord() {
        String sql = "select count(*) from card_record";
        int result=0;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        try {
            ps = con.prepareStatement(sql);
            rs = dao.exeQuery(con, ps,null);//得到结果集
            if (rs != null && rs.next()) {
                result=rs.getInt(1);
            }
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return 0;
    }




    //系统管理下的公司管理的模糊查询
    public List<Company> querycompanyname(Company company) {
        String sql= "select cid ,caccount,cname  from company";
        String sqlDate="";
        if (company.getCid() !=-1){
            sqlDate=" cid= "+company.getCid();
        }
        if(!company.getCaccount().trim().isEmpty()){
           if (sqlDate.isEmpty()){
               sqlDate=sqlDate+" caccount like '%"+ company.getCaccount()+"%'";
           }else {
                sqlDate=sqlDate+" and  caccount like '%"+ company.getCaccount()+"%'";
          }
      }
      if(!company.getCanme().trim().isEmpty()){
           if (sqlDate.isEmpty()){
                sqlDate=sqlDate+" cname like '%"+ company.getCanme()+"%'";
          }else {
                sqlDate=sqlDate+" and  cname  like '%"+ company.getCanme()+"%'";
           }
       }
        sql=sql+ " where "+sqlDate;
        System.out.println(sql);
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        List<Company> companyList = new ArrayList<>();
        try {
            ps = con.prepareStatement(sql);    //得到收费管理模糊查询结果集
            rs = dao.exeQuery(con, ps, null);
            while (rs != null && rs.next()) {
                Company companyBean=new Company();
                companyBean.setCid(rs.getInt(1));
                companyBean.setCaccount(rs.getString(2));
                companyBean.setCanme(rs.getString(3));
                companyList.add(companyBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return companyList;
    }





    //系统管理下的公司管理分页和全查询
    public List<Company>queryAllcompany(int pageNow,int pageSize) {
        String sql = "select cid ,caccount,cname  from company  order by cid limit ?,?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        List<Company> companyList = new ArrayList<>();
        try {
            ps = con.prepareStatement(sql);
            rs = dao.exeQuery(con, ps, (pageNow-1)*pageSize,pageSize);//得到结果集
            while (rs != null && rs.next()) {
                Company companyBean=new Company();
                companyBean.setCid(rs.getInt(1));
                companyBean.setCaccount(rs.getString(2));
                companyBean.setCanme(rs.getString(3));
                companyList.add(companyBean);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return companyList;
    }






    //系统管理下的公司管理的总记录数
    public int companyfindTotalRecord() {
        String sql = "select count(*) from company";
        int result=0;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        try {
            ps = con.prepareStatement(sql);
            rs = dao.exeQuery(con, ps,null);//得到结果集
            if (rs != null && rs.next()) {
                result=rs.getInt(1);
            }
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return 0;
    }






    //系统管理下的公司管理的修改公司信息
    public boolean updatecompany(Company company) {
            boolean result = false;
            String sql = "insert into company(cid,caccount,cname) value(?,?,?)";
            PreparedStatement ps = null;
            Connection con = JdbcUtil.getConnection();
            List<Company> companyList = new ArrayList<>();
            try {
                con.setAutoCommit(false);
                ps = con.prepareStatement(sql);
                dao.exeUpdate(con, ps,new Object[]{company.getCid(),company.getCaccount(), company.getCanme()});//得到结果集
                con.commit();
                result = true;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                dao.closeAll(null, ps, con);
            }
            return result;
        }






    //系统管理下的添加
    public boolean addAllcompany(Company company) {
        boolean result = false;
        String sql = "insert into company(cid,caccount,cname) value(?,?,?)";
        PreparedStatement ps = null;
        Connection con = JdbcUtil.getConnection();
        List<Company> companyList = new ArrayList<>();
        try {
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql);
            dao.exeUpdate(con, ps,new Object[]{company.getCid(),company.getCaccount(), company.getCanme()});//得到结果集
              con.commit();
            result = true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(null, ps, con);
        }
        return result;
    }





    //系统管理下的删除
    public boolean modAllcompany(Company company) {
        boolean result = false;
        String sql = "delete from company where cid =? and caccount=? and cname=?";
        PreparedStatement ps = null;
        Connection con = JdbcUtil.getConnection();
        List<Company> companyList = new ArrayList<>();
        try {
            con.setAutoCommit(false);
            ps = con.prepareStatement(sql);
            dao.exeUpdate(con, ps,new Object[]{company.getCid(),company.getCaccount(), company.getCanme()});//得到结果集
            con.commit();
            result = true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(null, ps, con);
        }
        return result;
    }




//数据字典下的分页和全查询
    public List<Date> queryAllDate(int pageNow,int pageSize) {
        String sql = "select date_id,date_name,date_class from date order by date_id limit ?,?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        List<Date> dateList = new ArrayList<>();
        try {
            ps = con.prepareStatement(sql);
            rs = dao.exeQuery(con, ps, (pageNow-1)*pageSize,pageSize);//得到结果集
            while (rs != null && rs.next()) {
                Date dateBean=new Date();
                dateBean.setDate_id(rs.getInt(1));
                dateBean.setDate_name(rs.getString(2));
                dateBean.setDate_class(rs.getString(3));

                dateList.add(dateBean);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return  dateList;
    }




    //数据字典下的总记录数
       public int datefindTotalRecord() {
        String sql = "select count(*) from date";
        int result=0;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = JdbcUtil.getConnection();
        try {
            ps = con.prepareStatement(sql);
            rs = dao.exeQuery(con, ps,null);//得到结果集
            if (rs != null && rs.next()) {
                result=rs.getInt(1);
            }
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.closeAll(rs, ps, con);
        }
        return 0;
    }





}
