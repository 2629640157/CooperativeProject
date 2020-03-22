package com.ydgk.communityServices.services;

import com.ydgk.communityServices.entity.Company;
import com.ydgk.communityServices.util.Page;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-15  10:42
 */
public interface companyServices {
    int companyCounts(String cname,String name);
    List<Company> queryrechaRgeRecord(Page page, String cname, String name);
    boolean addMoney(Integer count,String remake,int cid);
    List<Company> querycardRecord(Page page, String cname, String name, String start, String end);
    int xiaoFeiCounts(String cname, String name, String start, String end);

}
