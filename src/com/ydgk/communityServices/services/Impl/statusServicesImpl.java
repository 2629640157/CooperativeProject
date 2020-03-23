package com.ydgk.communityServices.services.Impl;

import com.ydgk.communityServices.dao.statusDao;
import com.ydgk.communityServices.entity.Status;
import com.ydgk.communityServices.services.statusServices;
import com.ydgk.communityServices.util.Page;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-18  14:12
 */
public class statusServicesImpl implements statusServices {
    statusDao statusDao=new statusDao();
    @Override
    public int StatusCounts(int sender, int state) {
        return statusDao.StatusCounts(sender,state);
    }

    @Override
    public List<Status> queryStatus(int sender, int state, Page page) {
        return statusDao.queryStatus(sender,state,page);
    }

  /*  @Override
    public List<Integer> querySenders() {
        return statusDao.querySenders();
    }
*/
    @Override
    public boolean addStatus(Status status) {
        return statusDao.addStatus(status);
    }
}
