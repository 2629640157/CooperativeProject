package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 游斌
 * @create 2020-03-14  18:06
 */
@WebServlet("/ny/employer")
public class employerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equals("queryEmployers")) {
            queryEmployers(request,response);

        } else if (type.equals("query")) {
            query(request,response);
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        }else {}
    }

    private void query(HttpServletRequest request, HttpServletResponse response) {

    }

    private void queryEmployers(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("11111");
        String ename = request.getParameter("ename");
        String esex = request.getParameter("esex");
        String phone = request.getParameter("phone");
        String status = request.getParameter("status");
        String kinds = request.getParameter("kinds");
        Employer employer = new Employer(ename, esex, phone);
        Deal deal = new Deal(status, kinds,employer);


    }


}
