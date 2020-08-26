package pers.llj.crowdfunding.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pers.llj.crowdfunding.util.ResultEntity;

import java.util.List;

@Controller
@RequestMapping("ajax")
public class AjaxHandler {

    @ResponseBody
    @RequestMapping("sendArray")
    public ResultEntity<List<Integer>> sendArray(@RequestParam("array[]") List<Integer> integers) {
        for (Integer integer : integers) {
            System.out.println(integer);
        }
        return ResultEntity.success(integers);
    }
}
