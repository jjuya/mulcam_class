
/* Drop Tables */

DROP TABLE tb_board CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE seq_board;




/* Create Sequences */

CREATE SEQUENCE seq_board;



/* Create Tables */

CREATE TABLE tb_board
(
	no number NOT NULL,
	name varchar2(20) NOT NULL,
	title varchar2(100) NOT NULL,
	content varchar2(4000) NOT NULL,
	pwd varchar2(128) NOT NULL,
	regdate date DEFAULT sysdate NOT NULL,
	viewcount number DEFAULT 0 NOT NULL,
	PRIMARY KEY (no)
);

select * from TB_BOARD
order by no desc;

select no, name, title, regdate, viewcount
from   tb_board
order  by no desc;

select no, name, title, regdate, viewcount, content
from tb_board
where no = 1;

pg	startNum	endNum
1	1			10
2	11			20
3	21			30



exec: startNum = (pg - 1) * pageSize + 1
exec: endNum = pg * pageSize

select rownum, name, title, regdate, viewcount, content
from tb_board
where rownum between :startNum and :endNum
order by no desc;

1. query를 원하는 순서로 정렬
2. rownum을 붙인다
3. 원하는 부분을 가져온다

select B.*
from(select rownum as rnum, A.*
	from (	select no, name, title, regdate, viewcount, content
			from tb_board
			order by no desc
			) A
	) B
where rnum between :startNum and :endNum
order by no desc;


