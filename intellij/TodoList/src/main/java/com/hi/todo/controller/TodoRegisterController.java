package com.hi.todo.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.lang.reflect.Method;

@Controller
@RequestMapping("/todo/register")
@Log4j2
public class TodoRegisterController {


    // get : form 페이지로 응답
    @RequestMapping(method = RequestMethod.GET)
    public String getRegisterForm(){

        log.info("GET | /todo/register");
        //  /WEB-INF/views/todo/register.jsp

        return "todo/registerForm";
    }


    // post : redirect -> /todo/list , view 필요가 없다!!!
    @RequestMapping(method = RequestMethod.POST)
    public String postRegister(){

        log.info("post | /todo/register");

        return "redirect:/todo/list";
        // 일반 view와 구분은 redirect: 문자열로 구분
        // http://localhost:8080/todo/list
    }

}
