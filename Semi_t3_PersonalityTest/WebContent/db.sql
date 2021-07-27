create table result(
	r_no number(3) primary key,
	r_name varchar2(20 char) not null,
	r_mbti varchar2(10 char) not null

);

create sequence result_seq;

insert into result values(result_seq.nextval,'user1','ENTJ');
insert into result values(result_seq.nextval,'user2','ISFP');


select * from result;






drop table result cascade constraints;