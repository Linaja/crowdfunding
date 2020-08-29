package pers.llj.crowdfunding.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pers.llj.crowdfunding.entity.Role;
import pers.llj.crowdfunding.service.RoleService;
import pers.llj.crowdfunding.util.ResultEntity;

@Controller
@RequestMapping("role")
public class RoleController {

    private final RoleService roleService;

    public RoleController(RoleService roleService) {
        this.roleService = roleService;
    }


    @ResponseBody
    @RequestMapping("add")
    public ResultEntity<Object> addRole(@RequestBody Role role) {
        roleService.addRole(role);
        return ResultEntity.success(null);
    }

    @ResponseBody
    @RequestMapping("remove")
    public ResultEntity<Object> removeRole(@RequestBody Role role) {
        roleService.removeRole(role.getId());
        return ResultEntity.success(null);
    }

    @ResponseBody
    @RequestMapping("update")
    public ResultEntity<Object> updateRole(@RequestBody Role role){
        roleService.updateRole(role);
        return ResultEntity.success(null);
    }

    @ResponseBody
    @RequestMapping("get/id")
    public ResultEntity<Object> getRoleById(@RequestBody Role role){
        return ResultEntity.success(roleService.getRoleById(role.getId()));
    }

    @ResponseBody
    @RequestMapping("get/keyword")
    public ResultEntity<PageInfo<Role>> getRoleByKeyword(
            @RequestParam(defaultValue = "") String keyword,
            @RequestParam(defaultValue = "1") int pageNum,
            @RequestParam(defaultValue = "10") int pageSize) {
        return ResultEntity.success(roleService.getRoleByKeyword(keyword, pageNum, pageSize));
    }
}
