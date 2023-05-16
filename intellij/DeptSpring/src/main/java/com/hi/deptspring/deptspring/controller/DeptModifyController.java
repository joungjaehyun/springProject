package com.hi.deptspring.deptspring.controller;

import com.hi.deptspring.deptspring.service.DeptReadService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/dept/modify")
public class DeptModifyController {


    @GetMapping
    public String getModifyForm(){



        return "dept/modifyForm";
    }

    @PostMapping
    public String modify(){

        return "redirect:/dept/list";
    }
}
