package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.CardRecord;
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


@WebServlet(value = "/ny/cwgl/consume",initParams = @WebInitParam(name="pageSize",value = "3"))
public class consumeAdmin extends HttpServlet {
    private dealServices dealservices=new dealImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        request.setCharacterEncoding("UTF-8");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqType= request.getParameter("reqType");
        if (reqType.equals("queryConsumeTime")){
            queryConsumeTime(request, response);
        }else if (reqType.equals("AllConsume")){
            queryAllConsume(request, response);
        }

    }


    //消费管理的全查询和分页
    private void queryAllConsume(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageNow=Integer.valueOf(request.getParameter("pageNow"));
        if (pageNow<1){
            pageNow=1;
        }
        final int pageSize=Integer.valueOf(getServletConfig().getInitParameter("pageSize"));
        //得到本页所有记录集合
        List<CardRecord> cardrecordsList=dealservices.ConsumefingGoodAll(pageNow,pageSize);
        //得到总记录数
        int ConsumeTotalRecord=dealservices.ConsumefindTotalRecord();
        //得到总页数
        int TotalPages=0;
        if (ConsumeTotalRecord%pageSize==0){
            TotalPages=ConsumeTotalRecord/pageSize;
        }else {
            TotalPages=ConsumeTotalRecord/pageSize+1;
        }
        request.setAttribute("cardrecordsList",cardrecordsList);
        request.setAttribute("ConsumeTotalRecord",ConsumeTotalRecord);
        request.setAttribute("TotalPages",TotalPages);
        request.setAttribute("pageNow",pageNow);
        request.getRequestDispatcher("bbcx.jsp").forward(request,response);

    }





    //消费管理的模糊查询
    private void queryConsumeTime(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String record_id=request.getParameter("record_id");
        String record_company_name=request.getParameter("record_company_name");
        String type=request.getParameter("type");
        String money=request.getParameter("money");
        String Date_time=request.getParameter("Date_time");
        CardRecord cardrecord=new CardRecord(0,null,0,Date_time,null);
        List<CardRecord> cardRecordList = dealservices.queryconsume(cardrecord);
        request.setAttribute("cardRecordList",cardRecordList);
        request.getRequestDispatcher("bbcxResult.jsp").forward(request,response);
    }


}
