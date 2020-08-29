package pers.llj.crowdfunding.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import pers.llj.crowdfunding.entity.Role;
import pers.llj.crowdfunding.entity.mapper.RoleMapper;
import pers.llj.crowdfunding.service.RoleService;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    private final RoleMapper roleMapper;

    public RoleServiceImpl(RoleMapper roleMapper) {
        this.roleMapper = roleMapper;
    }

    @Override
    public void addRole(Role role) {
        roleMapper.insertSelective(role);
    }

    @Override
    public void removeRole(int id) {
        roleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void updateRole(Role role) {
        roleMapper.updateByPrimaryKeySelective(role);
    }

    @Override
    public Role getRoleById(int id) {
        return roleMapper.selectByPrimaryKey(id);
    }

    @Override
    public PageInfo<Role> getRoleByKeyword(String keyword, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Role> roles = roleMapper.selectByKeyword(keyword);
        return new PageInfo<>(roles);
    }
}
