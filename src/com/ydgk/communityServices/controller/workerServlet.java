package com.ydgk.communityServices.controller;

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
@WebServlet("/ny/worker")
public class workerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equals("")) {

        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        }else {}
    }
}
