insert into b_member (id, pw, name, email, address) values ('bbb','234','������','b@naver.com','����');

commit;

select * from b_member;

update b_member set id='abc' where id='hh1112133422';

delete b_member where id='hh11121334';

update b_member set pw='1111' ,name='������' where id='admin2';

commit;

desc b_member;

create table bs(
id varchar2(20) primary key,
pw varchar2(20),
name varchar2(20),
email varchar2(50),
address1 varchar2(50),
address2 varchar2(50),
address3 varchar2(50),
b_date date default sysdate,
u_date date default sysdate);


commit;


select * from bs;

insert into bs (id,pw,name,email,address1,address2,address3) values
('admin','1234','������','admin@naver.com','30201','����Ư���� ��õ��','5��');

insert into bs (id,pw,name,email,address1,address2,address3) values
('admin1','1234','������1','admin1@naver.com','30201','����Ư���� ��õ��','1��');

insert into bs (id,pw,name,email,address1,address2,address3) values
('admin2','1234','������2','admin2@naver.com','30201','����Ư���� ��õ��','��');



