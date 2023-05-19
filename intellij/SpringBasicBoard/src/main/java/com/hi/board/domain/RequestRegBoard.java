package com.hi.board.domain;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
@Builder
public class RequestRegBoard {

    private String title;
    private String content;
    private String writer;
    // 파일 업로드를 위해서 변수 추가
    private MultipartFile file; // 사용자로부터 받는 파일 객체
    private String fileName; // DB에 저장할 File이름 (위의 객체 이름과는 다름 왜냐면 중복을 피하기위해서) (난수 +형식)



}
