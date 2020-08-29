package pers.llj.crowdfunding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("dispatch")
public class DispatcherController {

    @RequestMapping("success")
    public String dispatchSuccess(){
        return "success";
    }

    @RequestMapping("admin-login")
    public String dispatchAdminLogin() {
        return "admin-login";
    }

    @RequestMapping("admin-main")
    public String dispatchAdminMain() {
        return "admin-main";
    }

    @RequestMapping("admin-page")
    public String dispatchAdminPage() {
        return "admin-page";
    }

    @RequestMapping("role-page")
    public String dispatchRolePage() {
        return "role-page";
    }
}
