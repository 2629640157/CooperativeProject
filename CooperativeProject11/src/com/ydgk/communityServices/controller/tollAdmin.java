package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Company;
import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;
import com.ydgk.communityServices.entity.Worker;
import com.ydgk.communityServices.services.Impl.dealImp;
import com.ydgk.communityServices.services.dealServices;
import com.ydgk.communityServices.util.JdbcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

@WebServlet(value = "/ny/cwgl/chaxungoods",initParams = @WebInitParam(name="pageSize",value = "3"))
public class tollAdmin extends HttpServlet {
    private dealServices dealservices=new dealImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqType= request.getParameter("reqType");
        if(reqType.equals("queryDateTime")){
            queryDateTime(request,response);
        }else if (reqType.equals("queryAll")){
            queryAllGoods(request,response);
        }
    }


          //    全查询和分页功能
    private void queryAllGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int pageNow=Integer.valueOf(request.getParameter("pageNow"));
            if (pageNow<1){
                pageNow=1;
            }
            final int pageSize=Integer.valueOf(getServletConfig().getInitParameter("pageSize"));
           //得到本页所有记录集合
            List<Deal> dealList11=dealservices.fingGoodAll(pageNow,pageSize);
            //得到总记录数
          int TotalRecord=dealservices.findTotalRecord();
           //得到总页数
         int TotalPages=0;
         if (TotalRecord%pageSize==0){
             TotalPages=TotalRecord/pageSize;
         }else {
             TotalPages=TotalRecord/pageSize+1;
         }
         request.setAttribute("dealList11",dealList11);
        request.setAttribute("TotalRecord",TotalRecord);
        request.setAttribute("TotalPages",TotalPages);
        request.setAttribute("pageNow",pageNow);
        request.getRequestDispatcher("sfgl.jsp").forward(request,response);

    }


    //收费管理的模糊查询结果集
    private void queryDateTime(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String did=request.getParameter("did");
        String introducefee=request.getParameter("introducefee");
        String submitdate=request.getParameter("submitdate");
        String ename=request.getParameter("ename");
        String wname=request.getParameter("wname");
        String cname=request.getParameter("cname") ;
        String shuoming=request.getParameter("shuoming");
        Deal deal=new Deal(did,introducefee,submitdate);
        Employer employer=new Employer(ename);
        Worker worker=new Worker(wname);
        Company company=new Company(cname,shuoming);
        List<Deal> dealList = dealservices.queryTimes(deal);
        request.setAttribute("dealList",dealList);
        request.getRequestDispatcher("chaxunResult.jsp").forward(request,response);
        }




}
