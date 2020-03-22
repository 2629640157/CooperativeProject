package com.ydgk.communityServices.controller;

import com.ydgk.communityServices.entity.Worker;
import com.ydgk.communityServices.services.Impl.workerServicesImpl;
import com.ydgk.communityServices.services.workerServices;
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
@WebServlet("/ny/ywgl/worker")
public class workerServlet extends HttpServlet {
    workerServices workerServices=new workerServicesImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type.equals("grxx_cx")) {
            grxx_cx(request, response);
        } else if (type.equals("")) {

        } else {
        }
    }


    /**
     * 用工检索
     *
     * @param request
     * @param response
     */

    private void grxx_cx(HttpServletRequest request, HttpServletResponse response) {
        String wname = request.getParameter("wname");
        String wsex = request.getParameter("wsex");
        String wageStartStr = request.getParameter("wageStart");
        Integer wageStart = Integer.valueOf(wageStartStr);
        String wageEndStr = request.getParameter("wageEnd");
        Integer wageEnd = Integer.valueOf(wageEndStr);
        String worktimeStr = request.getParameter("worktime");
        Date worktime = StringAndDateExchange.changeString(worktimeStr);
        String[] languages = request.getParameterValues("language");
        String status = request.getParameter("status");
        String statustext = request.getParameter("statustext");
        if (status!=null&&status.equals("其他")) {
            status = statustext;
        }
        String hystatus = request.getParameter("hystatus");
        String hystatustext = request.getParameter("hystatustext");
        if (hystatus!=null&&hystatus.equals("其他")) {
            hystatus = hystatustext;
        }
        String[] zjstatus = request.getParameterValues("zjstatus");
        String[] grskills = request.getParameterValues("grskills");
        Worker worker=new Worker(wname,wsex,worktime,status,hystatus);
        List<Worker> workerList = workerServices.queryWorkers(worker, worktimeStr, wageStart, wageEnd, languages, zjstatus, grskills);
        request.setAttribute("workerList",workerList);
        try {
            request.getRequestDispatcher("grxx_jg.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
