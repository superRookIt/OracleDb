select emp_name from employees where emp_name like 'T%';
select emp_name from employees where emp_name like '_r%';
select emp_name from employees where emp_name like '%p%';

select commission_pct from employees where commission_pct is null;
select commission_pct from employees where commission_pct is not null;

select salary ,round(salary+(salary*nvl(commission_pct,0)/12),2) from employees;

create sequence board
increment by 1
start with 4
minvalue 4
maxvalue 100
cycle;

select board.nextval from dual;

select board.currval from dual;

select sysdate-1 as "어제", sysdate as "오늘", sysdate+365 as "1년 후" from dual;
-- 한글, 띄어쓰기는 쌍따옴표

select hire_date, round((sysdate-hire_date)/365*12) as "달수" from employees;
select hire_date, round(months_between(sysdate,hire_date)) as "달수" from employees;

select hire_date as "입사일" ,sysdate "오늘" , add_months(sysdate,12) as "1년 후" from employees;
select hire_date as "입사일" ,sysdate "오늘" , add_months(sysdate,-3) as "3개월 전" from employees;

select sysdate, next_day(sysdate,'토요일') from dual;

select sysdate, last_day(sysdate) from dual;

select sysdate, to_char(sysdate,'YYYY-MM-DD') from dual;

select sysdate, to_char(sysdate,'MON/DD/DAY/DY/YYYY') from dual;
--4월 /20/월요일/월/2020

select sysdate, to_char(sysdate,'YYYY/MM/DD hh:mm:ss') from dual;
-- 2020/04/20 11:04:50

select hire_date, to_char(hire_date,'YYYY-MM-DD hh:mm:ss') from employees;
-- MM 월, mm 분

select birth, to_char(birth,'YYYY-MM-DD hh:mm:ss') as "char_birth" from lms_member;
-- 05/04/04, 2005-04-04 12:04:00

select birth, to_char(birth, 'YY/MM/DD DAY') from lms_member;
-- 05/04/04(DD) 월요일(DAY)

select birth, to_char(birth, 'YY/MM/DY DAY') from lms_member;
-- 05/04/월(DY) 월요일

select to_char(hire_date, 'YYYY-MM-DD hh:mm:ss DAY') as "입사일" from employees; 
-- hh:mi:ss도 되긴 하는데..mm이 나은듯

select sysdate, to_char(sysdate,'YYYY/MM/DD hh24:mm:ss') from dual;

select to_char(123) from dual;
select to_char(123456789,'999,999,999') from dual;
-- 0 : 자릿수 맞지 않을경우 0으로 채움, 9는 안채움

select salary, to_char(salary*1200, 'L999,999,999')as "원화" from employees;

select salary, to_char(salary*1200, '$999,999,999')as "달러표시된 원화 ㅋ" from employees;
--  $3,120,000

select salary, to_char(salary*1200, '$009,999,999')as "달러표시된 원화 ㅋ" from employees;
-- $003,120,000

select * from employees;

select emp_name, hire_date from employees where hire_date=to_date(20050817,'YYYYMMDD');

create table m0420_01(
m_name varchar2(20),
m_date date,
v_date varchar2(20));

insert into m0420_01 values('홍길동',sysdate,'20/04/19');

insert into m0420_01 values('김유신',sysdate,'20/04/18');

insert into m0420_01 values('유관순',sysdate,'20/04/17');

insert into m0420_01 values('강감찬',sysdate,'20/04/20');

commit;

select * from m0420_01;

select * from m0420_01 where to_date(m_date,'YY/MM/DD') = to_date(sysdate,'YY/MM/DD');

select * from m0420_01 where m_date = to_date(200420,'YY/MM/DD');

delete from m0420_01;
-- 전체 행 삭제

commit;

insert into m0420_01 values('홍길동','20/04/20','20/04/20');

insert into m0420_01 values('유관순','20/04/20','20/04/18');

insert into m0420_01 values('강감찬','20/04/20','20/04/19');

insert into m0420_01 values('김유신','20/04/20','20/04/27');

insert into m0420_01 values('김구',sysdate,'20/04/20');

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01;

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01 where m_date = '20/04/20';

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01 where m_date = to_date('20/04/20');

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01 where m_date = to_date(200420,'YY/MM/DD');

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01 where m_date = to_date(v_date,'YY/MM/DD');

select salary, salary +(salary*nvl(commission_pct,0)) from employees;
--nvl : null이면 0으로 계산

select * from employees;

select emp_name, nvl(to_char(manager_id),'ceo') from employees;

rename m0420_01 to m0420_1;

select * from tab;

select * from m0420_1;

alter table m0420_1 add(id varchar2(20));

alter table m0420_1 modify(id varchar2(30));

desc m0420_1;

create table b_member(
id varchar2(20) primary key,
pw varchar2(20),
name varchar2(20),
email varchar2(30),
address varchar2(50),
b_date date default sysdate);

insert into b_member (id,pw,name,email,address)
values('aaa','123','홍길동','aaa@naver.com','서울시 가산디지털');

insert into b_member (id,pw,name,email,address)
values('admin','1234','관리자','admin@naver.com','서울시 가산디지털');

select * from b_member;

commit;