package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;
import com.ydgk.communityServices.services.Impl.employerServicesImpl;
import com.ydgk.communityServices.services.employerServices;
import com.ydgk.communityServices.util.StringAndDateExchange;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * @author 游斌
 * @create 2020-03-14  18:06
 */
@WebServlet("/ny/ywgl/employer")
public class employerServlet extends HttpServlet {
    employerServices employerServices = new employerServicesImpl();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equals("queryOneClearly")) {
            queryOneClearly(request, response);

        } else if (type.equals("toUpdate")) {
            toUpdate(request, response);
        } else if (type.equals("addEmployer")) {
            addEmployer(request, response);
        } else if (type.equals("toAdd")) {
            toAdd(request, response);
        } else if (type.equals("updateEmployer")) {
            updateEmployer(request, response);
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else {
        }
    }

    private void updateEmployer(HttpServletRequest request, HttpServletResponse response) {
        //传页码，这样返回时可以跳到点击时的页码
        String pageNowStr = request.getParameter("pageNow");
        int pageNow=Integer.valueOf(pageNowStr);
        request.setAttribute("pageNow",pageNow);

        String eidStr = request.getParameter("eid");
        int eid=Integer.valueOf(eidStr);
        Employer employer = getEmployer(request, response);
        boolean b = employerServices.updatedEmployer(employer, eid);
        if (b){
            try {
                response.sendRedirect("deal?type=query&pageNow="+pageNow);
              //  request.getRequestDispatcher("deal?type=query&pageNow="+pageNow).forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else {
            System.out.println("修改失败！");
        }

    }

    //跳转添加雇主页面
    private void toAdd(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow=1;
        if (pageNowStr!=null&&!pageNowStr.equals("")){
            pageNow=Integer.valueOf(pageNowStr);
        }
        request.setAttribute("pageNow",pageNow);
        try {
            request.getRequestDispatcher("gzxx_xz.jsp").forward(request, response);
            //response.sendRedirect("gzxx_xz.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //添加雇主
    private void addEmployer(HttpServletRequest request, HttpServletResponse response) {
        Employer employer = getEmployer(request, response);
        boolean b = employerServices.addEmployer(employer);
        if (b) {
            try {
               response.sendRedirect("deal?type=query");
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("添加失败！");
        }

    }

    //跳转修改雇主页面
    private void toUpdate(HttpServletRequest request, HttpServletResponse response) {
        //传页码，这样返回时可以跳到点击时的页码
        String pageNowStr = request.getParameter("pageNow");
        int pageNow=Integer.valueOf(pageNowStr);
        request.setAttribute("pageNow",pageNow);

        String didStr = request.getParameter("did");
        int did = Integer.valueOf(didStr);
        Deal deal = employerServices.queryOneClearly(did);
        int eid = deal.getEmployer().getEid();
        request.setAttribute("deal", deal);
        request.setAttribute("eid",eid);
        try {
            request.getRequestDispatcher("gzxx_xg.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    //查询雇主详细信息
    private void queryOneClearly(HttpServletRequest request, HttpServletResponse response) {
        //传页码，这样返回时可以跳到点击时的页码
        String pageNowStr = request.getParameter("pageNow");
        int pageNow=Integer.valueOf(pageNowStr);
        request.setAttribute("pageNow",pageNow);

        String didStr = request.getParameter("did");
        int did = Integer.valueOf(didStr);
        Deal deal = employerServices.queryOneClearly(did);
        request.setAttribute("deal", deal);
        try {
            request.getRequestDispatcher("gzxx_ck.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //获取表单中的数据
    private  Employer getEmployer(HttpServletRequest request, HttpServletResponse response){
        //因为有些数据为int类型 所以这些数据不能为空  （后期修改把int全用integer）
        String ename = request.getParameter("ename");
        String esex = request.getParameter("esex");
        String eageStr = request.getParameter("eage");
        Integer eage = Integer.valueOf(eageStr);
        String nation = request.getParameter("nation");
        String nationplace = request.getParameter("nationplace");
        String education = request.getParameter("education");
        String idcard = request.getParameter("idcard");
        String workplace = request.getParameter("workplace");
        String duty = request.getParameter("duty");
        String htnumber = request.getParameter("htnumber");
        String httimeStr = request.getParameter("httime");
        Date httime = StringAndDateExchange.changeString(httimeStr);
        String phone = request.getParameter("phone");
        String cellphone = request.getParameter("cellphone");
        String address = request.getParameter("address");
        String hkaddress = request.getParameter("hkaddress");
        String serviceaddress = request.getParameter("serviceaddress");
        String familyaddress = request.getParameter("familyaddress");
        String familynumber = request.getParameter("familynumber");
        String content = request.getParameter("content");
        String require = request.getParameter("require");
        String area = request.getParameter("area");
        String habit = request.getParameter("habit");
        String other = request.getParameter("other");
        String agentStr = request.getParameter("agent");
        Integer agent = Integer.valueOf(agentStr);
        String timeStr = request.getParameter("time");
        Date time = StringAndDateExchange.changeString(timeStr);
        Employer employer = new Employer(ename, esex, eage, nation, nationplace, education, idcard, workplace, duty, htnumber, httime, phone, cellphone, address, hkaddress, serviceaddress, familyaddress, familynumber, require, content, area, habit, other, agent, time);
        return  employer;
    }

}
