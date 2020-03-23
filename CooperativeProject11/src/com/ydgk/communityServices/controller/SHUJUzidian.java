package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Date;
import com.ydgk.communityServices.services.Impl.dealImp;
import com.ydgk.communityServices.services.dealServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

@WebServlet(value ="/ny/xtgl/shujuzidian",initParams = @WebInitParam(name="pageSize",value = "3"))
public class SHUJUzidian extends HttpServlet {
    private dealServices dealservices = new dealImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqType = request.getParameter("reqType");
        if (reqType.equals("queryshujuzidian")){
            queryshujuzidian(request, response);
    }
    }


//数据字典分页和全查询
    private void queryshujuzidian(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ServletException, IOException {
        int pageNow=Integer.valueOf(request.getParameter("pageNow"));
        if (pageNow<1){
            pageNow=1;
        }
        final int pageSize=Integer.valueOf(getServletConfig().getInitParameter("pageSize"));
        // 得到本页所有记录集合
        List<Date> dateList=dealservices.querydate(pageNow,pageSize);
        //得到总记录数
        int TotalRecord=dealservices.findTotalDate();
        //得到总页数
        int TotalPages=0;
        if (TotalRecord%pageSize==0){
            TotalPages=TotalRecord/pageSize;
        }else {
            TotalPages=TotalRecord/pageSize+1;
        }
        request.setAttribute("dateList",dateList);
        request.setAttribute("TotalRecord",TotalRecord);
        request.setAttribute("TotalPages",TotalPages);
        request.setAttribute("pageNow",pageNow);
        request.getRequestDispatcher("basedate_list.jsp").forward(request,response);
    }






}




