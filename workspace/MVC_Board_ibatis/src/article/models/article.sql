
/* Drop Tables */

DROP TABLE tb_article CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE seq_article;




/* Create Sequences */

CREATE SEQUENCE seq_article;



/* Create Tables */

CREATE TABLE tb_article
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

select * from TB_ARTICLE;

select no, title, name, regdate, viewcount
from tb_article
order by no desc;


begin 
   FOR i in 1..100 LOOP
      insert into tb_article(no, title, name, pwd, content, regdate, viewcount) 
      values (seq_article.nextval, '하하','요놈','1234','하하하하', sysdate, 0);
   end LOOP;
end;
/

-- 원하는 정보를 만든다.
SELECT no, title, name, regdate, viewcount
FROM tb_article
ORDER BY no desc;

-- 그대로 번호를 매긴다.
SELECT rownum as rnum , A.*
FROM (	SELECT no, title, name, regdate, viewcount
		FROM tb_article
		ORDER BY no desc) A;

-- 그리고 그 번호를 매긴 테이블을 새로 만든다.
SELECT B.*
FROM ( 	SELECT rownum as rnum , A.*
		FROM (	SELECT no, title, name, regdate, viewcount
				FROM tb_article
				ORDER BY no desc) A ) B
WHERE rnum BETWEEN 11 AND 20;
