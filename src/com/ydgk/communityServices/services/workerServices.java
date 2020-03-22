package com.ydgk.communityServices.services;

import com.ydgk.communityServices.entity.Worker;

import java.util.List;

/**
 * @author 游斌
 * @create 2020-03-15  10:42
 */
public interface workerServices {
    List<Worker> queryWorkers(Worker worker, String worktimeStr, int wageStart, int wageEnd, String[] languages, String[] zjstatus, String[] grskills);
}
