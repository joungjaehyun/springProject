package com.hi.board.service;

import com.hi.board.domain.RequestModifyRequest;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Service
public class BoardModifyService {

    public int modifyBoardDTO(RequestModifyRequest modifyRequest,
                              HttpServletRequest request){

        // 파일 저장 : 파일이 존재하면 저장
        if (modifyRequest.getFile()!=null && modifyRequest.getFile().getSize()>0){
            // 웹 경로
            String uri = "/uploadfile/board";
            // 실제경로
            String realPath = request.getSession().getServletContext().getRealPath(uri);
            // 새로운 파일 이름
            String newFileName= UUID.randomUUID().toString() + modifyRequest.getFile().getOriginalFilename();
            // 저장
            File newFile =  new File(realPath,newFileName);
            try {
                modifyRequest.getFile().transferTo(newFile);
                modifyRequest.setFilename(newFileName);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            // filename 속성에 새로운 파일 이름을 저장
        } else {
            // filename 속성에 이전 업로드된 파일 이름을 저장
        }



        // BoardMapper update 요청
        return 1;
    }
}
