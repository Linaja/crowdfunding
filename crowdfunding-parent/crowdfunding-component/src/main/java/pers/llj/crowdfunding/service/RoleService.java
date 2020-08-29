package pers.llj.crowdfunding.service;

import com.github.pagehelper.PageInfo;
import pers.llj.crowdfunding.entity.Role;

import java.util.List;

public interface RoleService {

    void addRole(Role role);

    void removeRole(int id);

    void updateRole(Role role);

    Role getRoleById(int id);

    PageInfo<Role> getRoleByKeyword(String keyword, int pageNum, int pageSize);







}
