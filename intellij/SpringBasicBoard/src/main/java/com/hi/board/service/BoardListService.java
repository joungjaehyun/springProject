package com.hi.board.service;

import com.hi.board.domain.BoardDTO;
import com.hi.board.domain.BoardListPage;
import com.hi.board.domain.BoardSearchOption;
import com.hi.board.domain.PageOption;
import com.hi.board.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardListService {

    @Autowired
    private BoardMapper boardmapper;

    //한 페이지에 담을 게시물의 개수 (final) = 상수임
    private final int countPerpage =5;

    public List<BoardDTO> getBoardList(){
        return boardmapper.selectAll();
    }

    public BoardListPage getPage(int pageNum, BoardSearchOption searchOption){
        // 현재 요청 페이지
        int requestPageNum = pageNum;

        PageOption pageOption=  PageOption.builder()
                .searchOption(searchOption)
                .startNum((requestPageNum-1)*countPerpage)
                .count(countPerpage)
                .build();

        // 요청 페이지의 리스트 항목 : List<BoardDTO>
        // List<BoardDTO> list =boardmapper.selectList((requestPageNum-1)*countPerpage,countPerpage);
        List <BoardDTO> list =boardmapper.selectList(pageOption);
        int totalCount = boardmapper.selectTotalCount(searchOption); // 전체 게시글 개수 -> 전체 페이지의 개수

        BoardListPage page = new BoardListPage(countPerpage,
                requestPageNum,
                list,
                totalCount);

        return page;
    }
}
