package com.ydgk.communityServices.services.Impl;

import com.ydgk.communityServices.dao.informDao;
import com.ydgk.communityServices.entity.Inform;
import com.ydgk.communityServices.services.informServices;
import com.ydgk.communityServices.util.Page;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-17  21:47
 */
public class ImformServicesImpl implements informServices  {
    informDao informDao=new informDao();
    @Override
    public int informCounts(String start,String end) {
        return informDao.informCounts(start, end);
    }

    @Override
    public List<Inform> queryDeals(String start, String end, Page page) {
        return informDao.queryDeals(start,end,page);
    }
}
