package com.ydgk.communityServices.services.Impl;

import com.ydgk.communityServices.dao.dealDao;
import com.ydgk.communityServices.entity.*;
import com.ydgk.communityServices.services.dealServices;

import java.util.List;

public class dealImp  implements dealServices {
   private dealDao dealdao=new dealDao();
    @Override
    public List<Deal> queryTimes(Deal deal) {
        return dealdao.queryDateTime(deal);   //收费管理模糊查询
    }


    @Override
    public List<Deal> fingGoodAll(int pageNow, int pageSize) {
        return dealdao.queryGoodAll(pageNow,pageSize);
    }                                                      //收费管理分页

    @Override
    public int findTotalRecord() {
        return dealdao.findTotalRecord();                    //收费管理总记录数
    }

    @Override
    public List<CardRecord> queryconsume(CardRecord cardrecord) {
        return dealdao.queryConsumeTime(cardrecord);             //消费管理模糊查询
    }

    @Override
    public int ConsumefindTotalRecord() {
        return dealdao.ConsumefindTotalRecord();       //消费管理总记录数
    }

    @Override
    public List<CardRecord> ConsumefingGoodAll(int pageNow, int pageSize) {
        return dealdao.queryAllConsume(pageNow,pageSize);            //消费管理分页
    }

    @Override
    public List<Company> querycompanycid(Company company) {
        return dealdao.querycompanyname(company);            //系统管理下的公司管理的模糊查询
    }

    @Override
    public List<Company> querycompanyfenye(int pageNow, int pageSize) {
        return dealdao.queryAllcompany(pageNow,pageSize);                           //系统管理下的公司管理的分页
    }

    @Override
    public int companyfindTotalRecord() {
        return dealdao.companyfindTotalRecord();           //系统管理下的公司管理的总记录数
    }

    @Override
    public boolean modconpanyname(Company company) {
        return dealdao.updatecompany(company);                                       //系统管理下的公司管理的修改公司信息
    }

    @Override
    public boolean deletecompany(int cid) {
        return false;                  //系统管理下的公司管理的删除公司信息
    }


}
