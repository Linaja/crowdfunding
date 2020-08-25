package pers.llj.crowdfunding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pers.llj.crowdfunding.entity.Admin;
import pers.llj.crowdfunding.service.AdminService;

@Controller
@RequestMapping("admin")
public class AdminController {

    private final AdminService adminService;

    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }

    @RequestMapping("login")
    public String login(Admin admin) {
        Admin databaseAdmin = adminService.getAdminByAccount(admin);
        if (databaseAdmin == null || !databaseAdmin.getPassword().equals(admin.getPassword()))
            return "redirect:/index.jsp";
        return "success";
    }
}
