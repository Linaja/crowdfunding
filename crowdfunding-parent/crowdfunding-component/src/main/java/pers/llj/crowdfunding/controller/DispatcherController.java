package pers.llj.crowdfunding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("dispatcher")
public class DispatcherController {

    @RequestMapping("success")
    public String dispatcherSuccess(){
        return "success";
    }
}
