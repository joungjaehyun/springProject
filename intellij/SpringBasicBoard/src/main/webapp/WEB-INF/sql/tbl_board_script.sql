SELECT * FROM project.tbl_board order by bno desc limit 0,5;  -- 1page (1-1)*5 => 0
SELECT * FROM project.tbl_board order by bno desc limit 5,5;  -- 2page (2-1)*5 => 5
SELECT * FROM project.tbl_board order by bno desc limit 10,5; -- 3page (3-1)*5 => 10
SELECT * FROM project.tbl_board order by bno desc limit 15,5; -- 4page (4-1)*5 => 15

select count(*) from tbl_board;

-- tbl_board SQL

-- select

-- select * from tbl_board;

-- insert
-- insert into tbl_board (title, content, writer) values (#{},#{},#{})
insert into tbl_board (title,content, writer) values('게시글 테스트','게시글 쓰기 테스트1', '테스터');








-- update
-- update tbl_board set title=#{}, content=#{}, writer=#{}, file =#{} where bno=#{};

-- delete