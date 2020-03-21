package com.ydgk.communityServices.services;

import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.util.Page;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-15  10:42
 */
public interface dealServices {
    //业务管理-->客户管理
    List<Deal> queryDeals(Deal deal, Page page);

    int dealCounts(Deal deal);

    public List<Deal> queryDealsByEmployer(int eid, Page page);

    public int dealCountsByEmployer(int eid);

    //业务管理-->用工管理
    List<Deal> queryWorkerDeals(Deal deal, Page page, String start, String end);

    int workerCounts(Deal deal, String start, String end);
}
