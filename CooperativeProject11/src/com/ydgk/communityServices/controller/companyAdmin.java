package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Company;
import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.services.Impl.dealImp;
import com.ydgk.communityServices.services.dealServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value ="/ny/xtgl/companyAdmin",initParams = @WebInitParam(name="pageSize",value = "3"))
public class companyAdmin extends HttpServlet {
    private dealServices dealservices=new dealImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqType= request.getParameter("reqType");
        if (reqType.equals("querycompanyname")){
            querycompanyname(request, response);
        }else if (reqType.equals("companyfenye")){
            companyfenye(request, response);
        }else if (reqType.equals("xiugai")){
            xiugaicompany(request, response);
        }else if (reqType.equals("delete")){
          deletecompany(request, response);
        }

    }
    //系统管理下的公司管理的删除公司信息
    private void deletecompany(HttpServletRequest request, HttpServletResponse response) {
        int cid=Integer.valueOf(request.getParameter("cid"));


    }

    //系统管理下的公司管理的修改公司信息
    private void xiugaicompany(HttpServletRequest request, HttpServletResponse response) {
        int cid=Integer.valueOf(request.getParameter("cid"));
        String caccount=request.getParameter("caccount");
        String canme=request.getParameter("canme");
        Company company=new Company(cid,caccount,canme);
        int pageNow=Integer.valueOf(request.getParameter("pageNow"));
        boolean modconpanyname = dealservices.modconpanyname(company);



    }

    //系统管理下的公司管理的全查询和分页
    private void companyfenye(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageNow=Integer.valueOf(request.getParameter("pageNow"));
        if (pageNow<1){
            pageNow=1;
        }
        final int pageSize=Integer.valueOf(getServletConfig().getInitParameter("pageSize"));
       // 得到本页所有记录集合
        List<Company> companyList=dealservices.querycompanyfenye(pageNow,pageSize);
        //得到总记录数
        int TotalRecord=dealservices.companyfindTotalRecord();
        //得到总页数
        int TotalPages=0;
        if (TotalRecord%pageSize==0){
            TotalPages=TotalRecord/pageSize;
        }else {
            TotalPages=TotalRecord/pageSize+1;
        }
        request.setAttribute("companyList",companyList);
        request.setAttribute("TotalRecord",TotalRecord);
        request.setAttribute("TotalPages",TotalPages);
        request.setAttribute("pageNow",pageNow);
        request.getRequestDispatcher("gsgl.jsp").forward(request,response);



    }

    //系统管理下的公司管理
    private void querycompanyname(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int cid=Integer.valueOf(request.getParameter("cid"));
        String caccount=request.getParameter("caccount");
        String canme=request.getParameter("canme");
        Company company=new Company(cid,caccount,canme);
        List<Company> companyList = dealservices.querycompanycid(company);
        request.setAttribute("companyList",companyList);
        request.getRequestDispatcher("gsglResult.jsp").forward(request,response);
    }
}
