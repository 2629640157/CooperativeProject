package com.ydgk.communityServices.services;

import com.ydgk.communityServices.entity.Deal;
import com.ydgk.communityServices.entity.Employer;

/**
 * @author 游斌
 * @create 2020-03-15  10:42
 */
public interface employerServices {
    Deal queryOneClearly(int did);
    boolean addEmployer(Employer employer);
    boolean updatedEmployer(Employer employer,int eid);
}
