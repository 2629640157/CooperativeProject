package com.ydgk.communityServices.services.Impl;

import com.ydgk.communityServices.dao.workerDao;
import com.ydgk.communityServices.entity.Worker;
import com.ydgk.communityServices.services.workerServices;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-22  15:32
 */
public class workerServicesImpl implements workerServices  {
    workerDao workerDao=new workerDao();
    @Override
    public List<Worker> queryWorkers(Worker worker, String worktimeStr, int wageStart, int wageEnd, String[] languages, String[] zjstatus, String[] grskills) {
        return workerDao.queryWorkers(worker,worktimeStr,wageStart,wageEnd,languages,zjstatus,grskills);
    }
}
