package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Status;
import com.ydgk.communityServices.services.Impl.statusServicesImpl;
import com.ydgk.communityServices.services.statusServices;
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
@WebServlet("/ny/ywgl/status")
public class statusServlet extends HttpServlet {
    statusServices statusServices = new statusServicesImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equals("queryStatus")) {
            queryStatus(request, response);
        } else if (type.equals("toAddStatus")) {
            toAddStatus(request, response);
        } else if (type.equals("addStatus")) {
            addStatus(request, response);
        } else {
        }
    }

    //添加处理
    private void addStatus(HttpServletRequest request, HttpServletResponse response) {
        request.getParameter("subject");
        request.getParameter("content");
        request.getParameter("sender");
        request.getParameter("");
        request.getParameter("");
    }

    //跳转到添加页面
    private void toAddStatus(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.sendRedirect("message_add.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //查询
    private void queryStatus(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = 1;
        if (pageNowStr != null && !pageNowStr.equals("")) {
            pageNow = Integer.valueOf(pageNowStr);
        }
        String senderStr = request.getParameter("sender");
        String stateStr = request.getParameter("state");
        int sender = 0;
        int state = 0;
        if (senderStr != null && !senderStr.equals("")) {
            sender = Integer.valueOf(senderStr);
        }
        if (stateStr != null && !stateStr.equals("")) {
            state = Integer.valueOf(stateStr);
        }
        int statusCounts = statusServices.StatusCounts(sender, state);
        Page page = new Page(1, pageNow, statusCounts);
        List<Status> statusList = statusServices.queryStatus(sender, state, page);
        //List<Integer> senderList = statusServices.querySenders();
        request.setAttribute("statusList", statusList);
        request.setAttribute("page", page);
        //request.setAttribute("senderList", senderList);
        try {
            request.getRequestDispatcher("message_list.jsp").forward(request, response);
            //response.sendRedirect("gzxx.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
