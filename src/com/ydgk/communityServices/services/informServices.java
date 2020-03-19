package com.ydgk.communityServices.services;

import com.ydgk.communityServices.entity.Inform;
import com.ydgk.communityServices.util.Page;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-15  10:42
 */
public interface informServices {
    int informCounts(String start,String end);
    List<Inform> queryDeals(String start, String end, Page page);

}
