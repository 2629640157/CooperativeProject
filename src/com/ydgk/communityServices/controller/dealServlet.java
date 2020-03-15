package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;
import com.ydgk.communityServices.services.Impl.dealServicesImpl;
import com.ydgk.communityServices.services.dealServices;
import com.ydgk.communityServices.util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-14  18:06
 */
@WebServlet("/ny/ywgl/deal")
public class dealServlet extends HttpServlet {
    dealServices dealServices = new dealServicesImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equals("queryEmployers")) {
            queryEmployers(request, response);

        } else if (type.equals("query")) {
            query(request, response);
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else {
        }
    }

    private void query(HttpServletRequest request, HttpServletResponse response) {
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
        Page page=new Page();
        List<Deal> dealList = dealServices.queryDeals(deal,page);
        HttpSession session = request.getSession();
        session.setAttribute("dealList",dealList);
        request.setAttribute("deal",deal);
        try {
            request.getRequestDispatcher("gzxx.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void queryEmployers(HttpServletRequest request, HttpServletResponse response) {




    }
}
