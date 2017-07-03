
/* Drop Tables */

DROP TABLE t_mem CASCADE CONSTRAINTS;

/* Create Tables */

CREATE TABLE t_mem
(
	user_id varchar2(30) NOT NULL,
	user_pw varchar2(128) NOT NULL,
	user_name varchar2(30) NOT NULL,
	PRIMARY KEY (user_id)
);

insert into t_mem values('multi', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', '제이비');