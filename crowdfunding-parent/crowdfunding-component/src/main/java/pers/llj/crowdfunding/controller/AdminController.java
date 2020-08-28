package pers.llj.crowdfunding.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pers.llj.crowdfunding.entity.Admin;
import pers.llj.crowdfunding.exception.LoginFailedException;
import pers.llj.crowdfunding.service.AdminService;
import pers.llj.crowdfunding.util.CustomUtils;
import pers.llj.crowdfunding.util.ResultEntity;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
@RequestMapping("admin")
public class AdminController {

    private final AdminService adminService;

    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }


    @RequestMapping("login")
    public String login(Admin admin, HttpSession session) {
        Admin databaseAdmin = adminService.getAdminByAccount(admin);
        if (databaseAdmin == null || !databaseAdmin.getPassword().equals(CustomUtils.md5(admin.getPassword())))
            throw new LoginFailedException("账号或密码错误");
        databaseAdmin.setPassword(null);
        session.setAttribute("admin", databaseAdmin);
        return "redirect:/dispatch/admin-main";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/dispatch/admin-login";
    }

    @ResponseBody
    @RequestMapping("pageInfo")
    public String getPageInfo(@RequestParam(defaultValue = "") String keyword,
                              @RequestParam(defaultValue = "1") Integer pageNum,
                              @RequestParam(defaultValue = "10") Integer pageSize
    ) {
        PageInfo<Admin> pageInfo = adminService.getPageInfo(keyword, pageNum, pageSize);
        HashMap<String, Object> map = new HashMap<>();
        map.put("rows", pageInfo.getList());
        map.put("total", pageInfo.getTotal());
        return new Gson().toJson(map);
    }

    @ResponseBody
    @RequestMapping(path = "remove", method = RequestMethod.POST)
    public String remove(@RequestBody Admin admin) {
        adminService.removeAdminByAccount(admin.getAccount());
        return new Gson().toJson(ResultEntity.success(null));
    }
}
