package pers.llj.crowdfunding.service;

import pers.llj.crowdfunding.entity.Admin;

public interface AdminService {

    void addAdmin(Admin admin);

    void removeAdmin(Admin admin);

    Admin getAdminByAccount(Admin admin);
}
