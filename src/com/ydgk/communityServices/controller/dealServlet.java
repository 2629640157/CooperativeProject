package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;
import com.ydgk.communityServices.entity.Worker;
import com.ydgk.communityServices.services.Impl.dealServicesImpl;
import com.ydgk.communityServices.services.Impl.employerServicesImpl;
import com.ydgk.communityServices.services.dealServices;
import com.ydgk.communityServices.services.employerServices;
import com.ydgk.communityServices.util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-14  18:06
 */
@WebServlet("/ny/ywgl/deal")
public class dealServlet extends HttpServlet {
    dealServices dealServices = new dealServicesImpl();
    employerServices employerServices=new employerServicesImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        //业务管理-->客户管理
        if (type.equals("queryHistory")) {
            queryHistory(request, response);

        } else if (type.equals("query")) {
            query(request, response);
            //业务管理-->用工管理
        } else if (type.equals("queryWorkers")) {
            queryWorkers(request, response);
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else {
        }
    }
    //业务管理-->用工管理
    private void queryWorkers(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow=1;
        if (pageNowStr!=null&&!pageNowStr.equals("")){
            pageNow=Integer.valueOf(pageNowStr);
        }
        String ename = request.getParameter("ename");
        String start = request.getParameter("start");
        String end = request.getParameter("end");
        if (start==null){
            start="";
        }
        if (end==null){
            end="";
        }
        String wname = request.getParameter("wname");
        String status = request.getParameter("status");

        if (status!=null&&status.equals("请选择")){
            status="";
        }
        Worker worker=new Worker(wname,status);
        Employer employer = new Employer(ename);
        Deal deal = new Deal(employer,worker);
        int totalCount = dealServices.workerCounts(deal,start,end);
        Page page=new Page(1,pageNow,totalCount);
        List<Deal> dealList = dealServices.queryWorkerDeals(deal,page,start,end);

        //HttpSession session = request.getSession();
        request.setAttribute("dealList",dealList);
        request.setAttribute("deal",deal);
        request.setAttribute("page",page);
        request.setAttribute("start",start);
        request.setAttribute("end",end);
        try {
            request.getRequestDispatcher("ddgl.jsp").forward(request,response);
            //response.sendRedirect("gzxx.jsp");
        }  catch (Exception e) {
            e.printStackTrace();
        }
    }


    //业务管理-->客户管理
    private void query(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow=1;
        if (pageNowStr!=null&&!pageNowStr.equals("")){
            pageNow=Integer.valueOf(pageNowStr);
        }
        String ename = request.getParameter("ename");
        String esex = request.getParameter("esex");
        String phone = request.getParameter("phone");
        String status = request.getParameter("status");
        String kinds = request.getParameter("kinds");
        if (status!=null&&status.equals("请选择")){
            status="";
        }
        if (kinds!=null&&kinds.equals("请选择")){
            kinds="";
        }
        Employer employer = new Employer(ename, esex, phone);
        Deal deal = new Deal(status, kinds, employer);
        int totalCount = dealServices.dealCounts(deal);
        Page page=new Page(1,pageNow,totalCount);
        List<Deal> dealList = dealServices.queryDeals(deal,page);

        //HttpSession session = request.getSession();
        request.setAttribute("dealList",dealList);
        request.setAttribute("deal",deal);
        request.setAttribute("page",page);
        try {
            request.getRequestDispatcher("gzxx.jsp").forward(request,response);
            //response.sendRedirect("gzxx.jsp");
        }  catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void queryHistory(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow=1;
        if (pageNowStr!=null&&!pageNowStr.equals("")){
            pageNow=Integer.valueOf(pageNowStr);
        }
        String didStr = request.getParameter("did");
        int did= Integer.valueOf(didStr);
        request.setAttribute("did",did);
        Employer employer = employerServices.queryOneClearly(did);
        request.setAttribute("employer",employer);
        int eid = employer.getEid();
        int dealCountsByEmployer = dealServices.dealCountsByEmployer(eid);
        Page page=new Page(1,pageNow,dealCountsByEmployer);
        List<Deal> dealList = dealServices.queryDealsByEmployer(eid, page);
        request.setAttribute("page",page);
        request.setAttribute("dealList",dealList);
        try {
            request.getRequestDispatcher("lsda.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
