package com.hi.board.controller;

import com.hi.board.service.BoardDeleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class BoardDeleteController {

    @Autowired
    private BoardDeleteService deleteService;
    @RequestMapping("/board/delete")
    public String deletebyNo(@RequestParam("bno") int bno){

        deleteService.deleteBoard(bno);

        return "redirect:/board/list";
    }
}
