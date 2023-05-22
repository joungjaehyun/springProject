package com.hi.board.domain.member;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class MemberRegistRequest {

    private String uid;
    private String uname;
    private String pw;
    private MultipartFile uphoto;

    private String fileName;
}
