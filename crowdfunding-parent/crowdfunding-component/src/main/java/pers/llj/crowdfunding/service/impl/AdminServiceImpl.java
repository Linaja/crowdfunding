package pers.llj.crowdfunding.service.impl;

import org.springframework.stereotype.Service;
import pers.llj.crowdfunding.entity.Admin;
import pers.llj.crowdfunding.entity.mapper.AdminMapper;
import pers.llj.crowdfunding.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

    private final AdminMapper adminMapper;

    public AdminServiceImpl(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public void addAdmin(Admin admin) {
        adminMapper.insertSelective(admin);
    }

    @Override
    public void removeAdmin(Admin admin) {
        adminMapper.deleteByPrimaryKey(admin.getAccount());
    }

    @Override
    public Admin getAdminByAccount(Admin admin) {
        return adminMapper.selectByPrimaryKey(admin.getAccount());
    }
}
