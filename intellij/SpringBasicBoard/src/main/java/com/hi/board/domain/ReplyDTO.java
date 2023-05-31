package com.hi.board.domain;


import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
@Builder
public class ReplyDTO {

    private int rno;
    private int bno;
    private int memIdx;
    private String reply;
    private String replyDate;
    private String updateDate;
}
