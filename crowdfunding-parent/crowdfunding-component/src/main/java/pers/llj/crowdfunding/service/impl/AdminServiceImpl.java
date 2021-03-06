package pers.llj.crowdfunding.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import pers.llj.crowdfunding.entity.Admin;
import pers.llj.crowdfunding.entity.mapper.AdminMapper;
import pers.llj.crowdfunding.service.AdminService;

import java.util.List;

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
    public void removeAdminByAccount(long account) {
        adminMapper.deleteByPrimaryKey(account);
    }

    @Override
    public Admin getAdminByAccount(Admin admin) {
        return adminMapper.selectByPrimaryKey(admin.getAccount());
    }

    @Override
    public void updateAdmin(Admin admin) {
        adminMapper.updateByPrimaryKeySelective(admin);
    }

    @Override
    public PageInfo<Admin> getPageInfo(String keyword, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Admin> admins = adminMapper.selectByKeyword(keyword);
        System.out.println(admins);
        return new PageInfo<>(admins);
    }


}
