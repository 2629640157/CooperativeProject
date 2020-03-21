package com.ydgk.communityServices.services;

import com.ydgk.communityServices.entity.Status;
import com.ydgk.communityServices.util.Page;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-15  10:42
 */
public interface statusServices {
    int StatusCounts(int sender, int state);
    List<Status> queryStatus(int sender, int state, Page page);
    List<Integer> querySenders();

}
