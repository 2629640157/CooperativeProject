package com.ydgk.communityServices.services.Impl;

import com.ydgk.communityServices.dao.dealDao;
import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.services.dealServices;
import com.ydgk.communityServices.util.Page;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-15  16:47
 */
public class dealServicesImpl implements dealServices {
    dealDao dealDao=new dealDao();
    @Override
    public List<Deal> queryDeals(Deal deal,Page page) {
        return dealDao.queryDeals(deal,page);
    }

    @Override
    public int dealCounts(Deal deal) {
        return dealDao.dealCounts(deal);
    }

    @Override
    public List<Deal> queryDealsByEmployer(int eid, Page page) {
        return dealDao.queryDealsByEmployer(eid,page);
    }

    @Override
    public int dealCountsByEmployer(int eid) {
        return dealDao.dealCountsByEmployer(eid);
    }
}
