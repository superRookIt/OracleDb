create table member2(
id varchar2(20) primary key,
pw varchar2(20),
name varchar2(20),
phone1 varchar2(3),
phone2 varchar2(4),
phone3 varchar2(4),
gender varchar2(6));

insert into member2 values('aaa','123','ȫ�浿','010','1111','1111','����');
insert into member2 values('bbb','234','������','010','2222','2222','����');

select * from member2;

create table member3(
name varchar2(20),
join_date date);

insert into member3 values ('ȫ�浿', sysdate);
--sysdate ���糯¥

select * from member3;

select id,pw from member2 where id='aaa' and pw='123';

commit;