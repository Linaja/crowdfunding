package pers.llj.crowdfunding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pers.llj.crowdfunding.entity.Admin;
import pers.llj.crowdfunding.exception.LoginFailedException;
import pers.llj.crowdfunding.service.AdminService;
import pers.llj.crowdfunding.util.CustomUtils;

import javax.servlet.http.HttpSession;

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
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/dispatch/admin-login";
    }
}
