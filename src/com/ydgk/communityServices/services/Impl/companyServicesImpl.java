package com.ydgk.communityServices.services.Impl;

import com.ydgk.communityServices.dao.companyDao;
import com.ydgk.communityServices.entity.Company;
import com.ydgk.communityServices.services.companyServices;
import com.ydgk.communityServices.util.Page;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-22  20:47
 */
public class companyServicesImpl implements companyServices {
    companyDao companyDao =new companyDao();
    @Override
    public int companyCounts(String cname, String name) {
        return companyDao.companyCounts(cname,name);
    }

    @Override
    public List<Company> queryrechaRgeRecord(Page page, String cname, String name) {
        return companyDao.queryrechaRgeRecord(page,cname,name);
    }

    @Override
    public boolean addMoney(Integer count, String remake, int cid) {
        return companyDao.addMoney(count,remake,cid);
    }

    @Override
    public List<Company> querycardRecord(Page page, String cname, String name, String start, String end) {
        return companyDao.querycardRecord(page,cname,name,start,end);
    }

    @Override
    public int xiaoFeiCounts(String cname, String name, String start, String end) {
        return companyDao.xiaoFeiCounts(cname,name,start,end);
    }
}
