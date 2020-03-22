package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Company;
import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;
import com.ydgk.communityServices.entity.Worker;
import com.ydgk.communityServices.services.Impl.dealServicesImpl;
import com.ydgk.communityServices.services.Impl.employerServicesImpl;
import com.ydgk.communityServices.services.dealServices;
import com.ydgk.communityServices.services.employerServices;
import com.ydgk.communityServices.util.Page;
import com.ydgk.communityServices.util.StringAndDateExchange;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-14  18:06
 */
@WebServlet("/ny/ywgl/deal")
public class dealServlet extends HttpServlet {
    dealServices dealServices = new dealServicesImpl();
    employerServices employerServices = new employerServicesImpl();

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
        } else if (type.equals("toAddWorker")) {
            toAddWorker(request, response);
        } else if (type.equals("")) {

        } else if (type.equals("addWorker")) {
            addWorker(request, response);
        } else if (type.equals("queryWorkersClear")) {
            queryWorkersClear(request, response);
        } else if (type.equals("updateWorker")) {
            updateWorker(request, response);
        } else if (type.equals("toUpdateWorker")) {
            toUpdateWorker(request, response);
        }
    }

    //跳转修改页面
    private void toUpdateWorker(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = Integer.valueOf(pageNowStr);
        request.setAttribute("pageNow", pageNow);
        String didStr = request.getParameter("did");
        int did = Integer.valueOf(didStr);
        Deal deal = employerServices.queryOneClearly(did);
        request.setAttribute("deal", deal);
        try {
            request.getRequestDispatcher("ddgl_xg.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //修改员工
    private void updateWorker(HttpServletRequest request, HttpServletResponse response) {
        Deal deal = getDeal(request, response);
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = 1;
        if (pageNowStr != null && !pageNowStr.equals("")) {
            pageNow = Integer.valueOf(pageNowStr);
        }
        boolean b = dealServices.updateDeals(deal);
        if (b) {
            try {
                response.sendRedirect("deal?type=queryWorkers&pageNow=" + pageNow);
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("修改失败");
        }
    }

    private void queryWorkersClear(HttpServletRequest request, HttpServletResponse response) {
        //传页码，这样返回时可以跳到点击时的页码
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = Integer.valueOf(pageNowStr);
        request.setAttribute("pageNow", pageNow);

        String didStr = request.getParameter("did");
        int did = Integer.valueOf(didStr);
        Deal deal = employerServices.queryOneClearly(did);
        request.setAttribute("deal", deal);
        try {
            request.getRequestDispatcher("ddgl_ck.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addWorker(HttpServletRequest request, HttpServletResponse response) {
        Deal deal = getDeal(request, response);
        boolean b = dealServices.addDeals(deal);
        if (b) {
            try {
                response.sendRedirect("deal?type=queryWorkers");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("添加失败");
        }

    }


    //跳转添加雇主页面
    private void toAddWorker(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = 1;
        if (pageNowStr != null && !pageNowStr.equals("")) {
            pageNow = Integer.valueOf(pageNowStr);
        }
        request.setAttribute("pageNow", pageNow);
        try {
            request.getRequestDispatcher("ddgl_xz.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //获取表单中的数据
    private Deal getDeal(HttpServletRequest request, HttpServletResponse response) {
        //因为有些数据为int类型 所以这些数据不能为空  （后期修改把int全用integer）

        String ename = request.getParameter("ename");
        String esex = request.getParameter("esex");
        String eageStr = request.getParameter("eage");
        Integer eage = Integer.valueOf(eageStr);
        String nation = request.getParameter("nation");
        String nationplace = request.getParameter("nativeplace");
        String education = request.getParameter("education");
        String eidcard = request.getParameter("eidcard");
        String hkaddress = request.getParameter("hkaddress");
        String cellphone = request.getParameter("cellphone");
        String address = request.getParameter("address");
        String duty = request.getParameter("duty");
        String workplace = request.getParameter("workplace");
        String min_salaryStr = request.getParameter("min_salary");
        String max_salaryStr = request.getParameter("max_salary");
        Float min_salary = Float.valueOf(min_salaryStr);
        Float max_salary = Float.valueOf(max_salaryStr);
        String introducefeeStr = request.getParameter("introducefee");
        Integer introducefee = Integer.valueOf(introducefeeStr);
        String serviceaddress = request.getParameter("serviceaddress");
        String familyaddress = request.getParameter("familyaddress");
        String familynumber = request.getParameter("familynumber");
        String content = request.getParameter("content");
        // String require = request.getParameter("require");
        String area = request.getParameter("area");
        String habit = request.getParameter("habit");
        String other = request.getParameter("other");
        String widStr = request.getParameter("wid");
        Integer wid = Integer.valueOf(widStr);
        String cidStr = request.getParameter("cid");
        Integer cid = Integer.valueOf(cidStr);
        String wname = request.getParameter("wname");
        String wsex = request.getParameter("wsex");
        String widcard = request.getParameter("widcard");
        String birthStr = request.getParameter("birth");
        Date birth = StringAndDateExchange.changeString(birthStr);
        String wageStr = request.getParameter("wage");
        Integer wage = Integer.valueOf(wageStr);
        String higeStr = request.getParameter("hige");
        Integer hige = Integer.valueOf(higeStr);
        String sellphone = request.getParameter("sellphone");
        String phone = request.getParameter("phone");
        String wkinds = request.getParameter("wkinds");
        String worktimeStr = request.getParameter("worktime");
        Date worktime = StringAndDateExchange.changeString(worktimeStr);
        String defect = request.getParameter("defect");
        String divdkinds = request.getParameter("divdkinds");
        String dkindstext = request.getParameter("dkindstext");
        if (divdkinds != null && !dkindstext.equals("")) {
            divdkinds = divdkinds + "," + dkindstext;
        } else {
            if (divdkinds == null) {
                divdkinds=dkindstext;
            } else {
                divdkinds = divdkinds + dkindstext;
            }
        }
        String agentStr = request.getParameter("agent");
        Integer agent = Integer.valueOf(agentStr);
        String salaryStr = request.getParameter("salary");
        Integer salary = Integer.valueOf(salaryStr);
        String usefultimeStr = request.getParameter("usefultime");
        Date usefultime = StringAndDateExchange.changeString(usefultimeStr);
        String status = request.getParameter("status");
        Employer employer = new Employer(ename, esex, eage, nation, nationplace, education, eidcard, workplace, duty, cellphone, address, hkaddress, serviceaddress, familyaddress, familynumber, content, area, habit, other, agent, max_salary, min_salary);
        Company company = new Company(cid);
        Worker worker = new Worker(wid, wname, wsex, widcard, birth, wage, hige, sellphone, phone, wkinds, worktime, defect, company);
        Deal deal = new Deal(usefultime, status, salary, divdkinds, introducefee, employer, worker);
        return deal;
    }


    //业务管理-->用工管理
    private void queryWorkers(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = 1;
        if (pageNowStr != null && !pageNowStr.equals("")) {
            pageNow = Integer.valueOf(pageNowStr);
        }
        String ename = request.getParameter("ename");
        String start = request.getParameter("start");
        String end = request.getParameter("end");
        if (start == null) {
            start = "";
        }
        if (end == null) {
            end = "";
        }
        String wname = request.getParameter("wname");
        String status = request.getParameter("status");

        if (status != null && status.equals("请选择")) {
            status = "";
        }
        Worker worker = new Worker(wname);
        Employer employer = new Employer(ename);
        Deal deal = new Deal(status, employer, worker);
        int totalCount = dealServices.workerCounts(deal, start, end);
        Page page = new Page(1, pageNow, totalCount);
        List<Deal> dealList = dealServices.queryWorkerDeals(deal, page, start, end);
        request.setAttribute("dealList", dealList);
        request.setAttribute("deal", deal);
        request.setAttribute("page", page);
        request.setAttribute("start", start);
        request.setAttribute("end", end);
        try {
            request.getRequestDispatcher("ddgl.jsp").forward(request, response);
            //response.sendRedirect("gzxx.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    //业务管理-->客户管理
    private void query(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = 1;
        if (pageNowStr != null && !pageNowStr.equals("")) {
            pageNow = Integer.valueOf(pageNowStr);
        }
        String ename = request.getParameter("ename");
        String esex = request.getParameter("esex");
        String phone = request.getParameter("phone");
        String status = request.getParameter("status");
        String kinds = request.getParameter("kinds");
        if (status != null && status.equals("请选择")) {
            status = "";
        }
        if (kinds != null && kinds.equals("请选择")) {
            kinds = "";
        }
        Employer employer = new Employer(ename, esex, phone);
        Deal deal = new Deal(status, kinds, employer);
        int totalCount = dealServices.dealCounts(deal);
        Page page = new Page(1, pageNow, totalCount);
        List<Deal> dealList = dealServices.queryDeals(deal, page);

        //HttpSession session = request.getSession();
        request.setAttribute("dealList", dealList);
        request.setAttribute("deal", deal);
        request.setAttribute("page", page);
        try {
            request.getRequestDispatcher("gzxx.jsp").forward(request, response);
            //response.sendRedirect("gzxx.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void queryHistory(HttpServletRequest request, HttpServletResponse response) {
        String pageNowStr = request.getParameter("pageNow");
        int pageNow = 1;
        if (pageNowStr != null && !pageNowStr.equals("")) {
            pageNow = Integer.valueOf(pageNowStr);
        }
        String didStr = request.getParameter("did");
        int did = Integer.valueOf(didStr);
        request.setAttribute("did", did);
        Deal deal = employerServices.queryOneClearly(did);
        request.setAttribute("deal", deal);
        int eid = deal.getEmployer().getEid();
        int dealCountsByEmployer = dealServices.dealCountsByEmployer(eid);
        Page page = new Page(1, pageNow, dealCountsByEmployer);
        List<Deal> dealList = dealServices.queryDealsByEmployer(eid, page);
        request.setAttribute("page", page);
        request.setAttribute("dealList", dealList);
        try {
            request.getRequestDispatcher("lsda.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
