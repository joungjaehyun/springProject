package com.hi.deptspring.deptspring.controller.rest;

import com.hi.deptspring.deptspring.domain.DeptDTO;
import com.hi.deptspring.deptspring.domain.DeptRegistRequest;
import com.hi.deptspring.deptspring.service.DeptListService;
import com.hi.deptspring.deptspring.service.DeptReadService;
import com.hi.deptspring.deptspring.service.DeptRegistService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1/depts")
@Log4j2
public class DeptRestController {


    // get : 전체 리스트
    // get /{no} : 부서 하나의 정보
    // post : JSON 형식의 데이터를 받아서 데이터베이스에 저장
    // put /{no} : 하나의 부서 정보를 수정, 전체 데이터를 수정
    // delete /{no} : 부서 정보 하나를 삭제

    @Autowired
    private DeptListService listService;
    @Autowired
    private DeptReadService readService;

    @Autowired
    private  DeptRegistService registService;

    @GetMapping // /api/v1/depts
    public List<DeptDTO> getDeptList(){


        return listService.getList();
    }

    @GetMapping("/{no}")

    public DeptDTO getDept(
            @PathVariable("no")int deptno
    ){
        return readService.getDept(deptno);
    }

    @PostMapping
    public String regDept(
            @RequestBody DeptRegistRequest registRequest
            ){
        log.info("JSON -> DeptDTO : " + registRequest);

        registService.registDept(registRequest);
        // JSON 데이터를 JAVA 객체로 받는다.
        return "insert OK!";
    }
}
