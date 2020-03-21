package com.ydgk.communityServices.services.Impl;

import com.ydgk.communityServices.dao.employerDao;
import com.ydgk.communityServices.entity.Employer;
import com.ydgk.communityServices.services.employerServices;

/**
 * @author 游斌
 * @create 2020-03-15  23:17
 */
public class employerServicesImpl implements employerServices {
    employerDao employerDao=new employerDao();
    @Override
    public Employer queryOneClearly(int did) {
        return employerDao.queryOneClearly(did);
    }

    @Override
    public boolean addEmployer(Employer employer) {
        return employerDao.addEmployer(employer);
    }

    @Override
    public boolean updatedEmployer(Employer employer, int eid) {
        return employerDao.updateEmployer(employer,eid);
    }
}
