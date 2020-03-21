package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Inform;
import com.ydgk.communityServices.services.Impl.ImformServicesImpl;
import com.ydgk.communityServices.services.informServices;
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
@WebServlet("/ny/ywgl/inform")
public class informServlet extends HttpServlet {
    informServices informServices=new ImformServicesImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equals("queryInform")) {
            queryInform(request, response);
        } else {
        }
    }

    private void queryInform(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow=1;
        if (pageNowStr!=null&&!pageNowStr.equals("")){
            pageNow=Integer.valueOf(pageNowStr);
        }
        String start = request.getParameter("start");
        String end = request.getParameter("end");
        if (start==null){
            start="";
        }
        if (end==null){
            end="";
        }
        int informCounts = informServices.informCounts(start,end);
        Page page=new Page(1,pageNow,informCounts);
        List<Inform> informs = informServices.queryDeals(start, end, page);
        request.setAttribute("page",page);
        request.setAttribute("informs",informs);
        request.setAttribute("start",start);
        request.setAttribute("end",end);
        try {
            request.getRequestDispatcher("mrtz.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
