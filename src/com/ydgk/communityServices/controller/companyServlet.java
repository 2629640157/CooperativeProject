package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Company;
import com.ydgk.communityServices.services.Impl.companyServicesImpl;
import com.ydgk.communityServices.services.companyServices;
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
@WebServlet("/ny/xtgl/company")
public class companyServlet extends HttpServlet {
    companyServices companyServices = new companyServicesImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equals("queryCompany")) {
            queryCompany(request, response);
        } else if (type.equals("addMoney")) {
            addMoney(request, response);
        } else if (type.equals("toAddMoney")) {
            toAddMoney(request, response);
        } else if (type.equals("queryCustomer")) {
            queryCustomer(request, response);
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else if (type.equals("")) {
        } else {
        }
    }

    /**
     * 消费
     * @param request
     * @param response
     */
    private void queryCustomer(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = 1;
        if (pageNowStr != null && !pageNowStr.equals("")) {
            pageNow = Integer.valueOf(pageNowStr);
        }
        String cname = request.getParameter("cname");
        String name = request.getParameter("name");
        String start = request.getParameter("start");
        String end = request.getParameter("end");
        int xiaoFeiCounts = companyServices.xiaoFeiCounts(cname, name, start, end);
        Page page=new Page(2,pageNow,xiaoFeiCounts);
        List<Company> companyList = companyServices.querycardRecord(page, cname, name, start, end);
        float totalExpense=0;
        for (Company c:companyList) {
            totalExpense=totalExpense+c.getCardRecord().getMoney();
        }
        request.setAttribute("cname", cname);
        request.setAttribute("name", name);
        request.setAttribute("start", start);
        request.setAttribute("end", end);
        request.setAttribute("page", page);
        request.setAttribute("totalExpense", totalExpense);
        request.setAttribute("companyList", companyList);
        try {
            request.getRequestDispatcher("xfcx.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 充值
     * @param request
     * @param response
     */
    private void toAddMoney(HttpServletRequest request, HttpServletResponse response) {
        String cname = request.getParameter("cname");
        String cidStr = request.getParameter("cid");
        Integer cid = Integer.valueOf(cidStr);
        String pageNowStr = request.getParameter("pageNow");
        Integer pageNow = Integer.valueOf(pageNowStr);
        request.setAttribute("cname", cname);
        request.setAttribute("cid", cid);
        request.setAttribute("pageNow", pageNow);
        try {
            request.getRequestDispatcher("czgl_xz.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addMoney(HttpServletRequest request, HttpServletResponse response) {
        String countStr = request.getParameter("count");
        Integer count=Integer.valueOf(countStr);
        String remake = request.getParameter("remake");
        String pageNowStr = request.getParameter("pageNow");
        Integer pageNow = Integer.valueOf(pageNowStr);
        String cidStr = request.getParameter("cid");
        Integer cid = Integer.valueOf(cidStr);
        boolean b = companyServices.addMoney(count, remake, cid);
        request.setAttribute("pageNow", pageNow);
        if (b){
            queryCompany(request,response);
        }else {
            System.out.println("充值失败");
        }



    }

    private void queryCompany(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = 1;
        if (pageNowStr != null && !pageNowStr.equals("")) {
            pageNow = Integer.valueOf(pageNowStr);
        }
        String cname = request.getParameter("cname");
        String name = request.getParameter("name");
        int companyCounts = companyServices.companyCounts(cname, name);
        Page page = new Page(2, pageNow, companyCounts);
        List<Company> companyList = companyServices.queryrechaRgeRecord(page, cname, name);
        Integer totalMoney=0;
        Integer totalTimes=0;
        Integer totalBalance=0;
        for (Company c:companyList) {
            totalMoney=totalMoney+ c.getRechargeCard().getMoney_norm();
            totalTimes=totalTimes+ c.getRechargeCard().getTimes();
            totalBalance=totalBalance+c.getRechargeCard().getBalance();
        }
        request.setAttribute("cname", cname);
        request.setAttribute("name", name);
        request.setAttribute("page", page);
        request.setAttribute("totalMoney", totalMoney);
        request.setAttribute("totalTimes", totalTimes);
        request.setAttribute("totalBalance", totalBalance);
        request.setAttribute("companyList", companyList);
        try {
            request.getRequestDispatcher("czgl.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
