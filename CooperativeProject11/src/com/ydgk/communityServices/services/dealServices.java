package com.ydgk.communityServices.services;

import com.ydgk.communityServices.entity.*;

import java.util.List;

public interface dealServices {

    List<Deal> queryTimes(Deal deal);    //收费管理模糊查询
    List<Deal> fingGoodAll(int pageNow,int pageSize);     //收费管理分页
    int findTotalRecord();     //收费管理的总记录数
    List<CardRecord> queryconsume(CardRecord cardrecord);//消费管理的消费时间模糊查询
    int ConsumefindTotalRecord();   //消费管理的总记录数
    List<CardRecord> ConsumefingGoodAll(int pageNow,int pageSize);   //消费管理分页
    List<Company> querycompanycid(Company company);    //系统管理下的公司管理的模糊查询
    List<Company> querycompanyfenye(int pageNow,int pageSize);  //系统管理下的公司管理的分页
    int companyfindTotalRecord();   //系统管理下的公司管理的总记录数
     boolean modconpanyname(Company company);         //系统管理下的公司管理的修改公司信息
      boolean deletecompany(Company company);                   //删除

    boolean  addcom(Company company);            //添加


    List<Date> querydate(int pageNow,int pageSize);  //数据字典下的分页
    int findTotalDate();     //收费管理的总记录数
}
