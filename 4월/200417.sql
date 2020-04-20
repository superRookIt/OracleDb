create table m_0417(
id number(4) primary key,
name varchar2(20) not null,
pw varchar2(20) not null,
phone varchar2(20));

--not null
--primary key는 not null and unique

commit;

desc m_0417;

insert into m_0417 values(1111,'홍길동','1234','010-1111-1111');

select * from m_0417;

update m_0417 set id=1 where id=1111;

insert into m_0417 values(2,'김유신','2345','010-2222-2222');

--creat, alter, drop 자동으로 commit 됨
--insert,update,delete,select : commit 해줘야 함
--롤백은 commit 기준으로

insert into m_0417 values(3,'유관순','4567','010-3333-3333');

--insert into m_0417 values(4,'','7890','010-4444-4444'); null 값 삽입 x

insert into m_0417 values(4,'김구','7890',''); 

create table m_0417_2(
id number(4) primary key,
pw varchar2(20) not null,
name varchar2(20) unique,
phone varchar2(20));

--unique

insert into m_0417_2 values(1,'1234','홍길동','010-1111-1111');

insert into m_0417_2 values(2,'2345','홍길자','010-2222-2222');

select * from m_0417_2;

insert into m_0417_2 values(3,'3456','','010-3333-3333'); 
--unique null값 가능

drop table m_0417;
drop table m_0417_2;

create table m_0417_3(
id number(4) primary key,
pw varchar2(20) not null,
name varchar2(20) unique not null,
phone varchar2(20));

select * from departments;

select * from employees;

create table m_0417_4(
id number(4) primary key,
name varchar2(20) not null,
salary number(4) check (salary between 500 and 5000),
gender varchar2(1) check (gender in('M','F')));

--CHECK는 대소문자 구분함

insert into m_0417_4 values(1,'홍길동','500','M');

insert into m_0417_4 values(2,'홍동길','500','F');

delete m_0417_4 where name='홍동길';

select * from m_0417_4;

commit;

create table dept01(
id number(4) primary key,
name varchar2(20) not null,
city varchar2(20) check(city in('서울','경기','인천')),
phone varchar2(20) unique);

insert into dept01 values (1,'유빈','서울','010-1111-1111');
insert into dept01 values (2,'소희','경기','010-1112-1112');
insert into dept01 values (3,'선예','인천','010-1113-1113');
insert into dept01 values (4,'선미','인천','010-1114-1114');
insert into dept01 values (5,'예은','경기','010-1115-1115');

select * from dept01;

create table student(
s_num number(4) primary key,
s_name varchar2(20) not null,
s_kor number(3) check(s_kor <=100),
s_eng number(3) check(s_eng <=100),
s_math number(3) check(s_math<=100),
s_avg number(4,1),
s_total number(3) check(s_total<=300),
s_rank number(5) default 0,
s_address varchar2(20) default '서울',
s_date date default sysdate);

--default 데이터값을 아무것도 안 넣으면 넣을 값

commit;

--insert into student (s_num, s_name, s_kor, s_eng, s_math, s_total, s_avg) 
--values (1,'홍길동',100,100,100,(s_kor+s_eng+s_math),(s_kor+s_eng+s_math)/3);

insert into student (s_num, s_name, s_kor, s_eng, s_math, s_total, s_avg) 
values (1,'홍길동',100,100,100,300,300/3);

select * from student;

create sequence b_seq
increment by 1
start with 1
minvalue 1
maxvalue 10000
nocycle;

-- 시퀸스

desc student;

alter table student modify(s_num number(5));
delete from student where s_num=1;
select * from student;

insert into student (s_num, s_name, s_kor, s_eng, s_math, s_total, s_avg) 
values (b_seq.nextval, '홍길동', 100, 100, 100, 300, 300/3);

insert into student (s_num, s_name, s_kor, s_eng, s_math, s_total, s_avg) 
values (b_seq.nextval, '유관순', 100, 80, 90, 270, 270/3);

select b_seq.currval from dual;
--시퀸스 현재까지 진행된 숫자 

create sequence d_seq
increment by 2
start with 1000
minvalue 1000
maxvalue 10000
nocycle;

select d_seq.currval from dual;
--시퀸스 현재까지 진행된 숫자 


drop table dept2;

create table dept2(
num number(10) primary key,
name varchar(20) not null,
d date default sysdate);

commit;

insert into dept2 values(d_seq.nextval, '홍길동','');

select * from dept2;

alter sequence d_seq
increment by 1;

create table m2(
id varchar2(20) primary key,
name varchar2(20) not null,
pw varchar2(20) not null,
phone1 varchar2(20),
phone2 varchar2(20),
phone3 varchar2(20),
gender varchar2(20));

insert into m2 values('ccc','김라영','1234','010','3111','2222','여자');

commit;

CREATE table member3(
turn number(10),
id varchar2(20) primary key,
pw varchar2(20) not null,
name varchar2(20) not null,
email varchar2(100) not null,
address varchar2(100),
phone varchar2(20),
birth date,
gender varchar2(10) check(gender in('남성','여성')),
news varchar2(10),
sms varchar2(10));

--order는 이름으로 사용할 수 없음...!!

create sequence three
increment by 1
start with 0
minvalue 0
maxvalue 100
nocycle;

drop table member3;

insert into member3 values(three.nextval,'aaaa','1234','가나다','gana@naver.com','서울시 금천구','010-1111-1111','1990/01/01','남성','예','아니요');
insert into member3 values(three.nextval,'baaa','2234','나나다','gana1@naver.com','서울시 금천구1','010-1111-1111','1990/01/01','남성','예','예');
insert into member3 values(three.nextval,'caaa','3234','다나다','gana2@naver.com','서울시 금천구2','010-2111-1111','1991/01/01','여성','아니요','예');
insert into member3 values(three.nextval,'daaa','4234','라나다','gana3@naver.com','서울시 금천구3','010-3111-1111','1992/01/01','남성','예','아니요');
insert into member3 values(three.nextval,'eaaa','5234','마나다','gana4@naver.com','서울시 금천구4','010-4111-1111','1993/01/01','여성','아니요','아니요');

select * from member3;


