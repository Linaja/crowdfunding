package pers.llj.crowdfunding.service;

import com.github.pagehelper.PageInfo;
import pers.llj.crowdfunding.entity.Admin;

public interface AdminService {

    void addAdmin(Admin admin);

    void removeAdminByAccount(long account);

    Admin getAdminByAccount(Admin admin);

    PageInfo<Admin> getPageInfo(String keyword, Integer pageNum, Integer pageSize);


}
