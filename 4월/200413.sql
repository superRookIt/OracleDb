select * from tab;

create table mem3(
id varchar2(20) primary key,
pw varchar2(20),
name varchar2(20),
b_date date);

--date는 날짜 00/00/00 

insert into mem3 values('abc','1234','홍길동','20/04/13');

select sysdate from dual; 
--새로운 행을 만들어주는

insert into mem3 values('bcd','234','김유신',sysdate);
--sysdate 오늘 날짜 

select * from mem3;

select * from employees;

select sysdate-hire_date as 근무일수, hire_date , hire_date -1 from employees;
--sysdate-hire_date(현재날짜 - hire_date)

select 34.78, round(34.7558,2), floor(34.78) from dual; --34.76
select 34.78, round(2834.6789,-1), floor(34.78), trunc(34.5678) from dual; --34.78/2830/34/34
--round(숫자,반올림 자리수) , floor 버림

select  distinct manager_id from employees where manager_id=100 order by manager_id asc;
--distinct 중복제거

select distinct manager_id from employees where manager_id <> 100 order by manager_id asc;
-- <> 아닌 거 

select distinct manager_id from employees where manager_id is null;

select distinct manager_id from employees where manager_id is not null order by manager_id asc;

select * from employees where salary between 5000 and 10000 order by salary;

select * from employees where emp_name='Pat Fay' order by salary;

select * from employees where hire_date >='2007/01/01' order by salary;

select * from employees;

desc employees;
--desc [테이블명] 각 필드의 유형을 볼 수 있음

commit;

select sysdate -1 as 어제, sysdate as 오늘,sysdate+1 as 내일 from dual;
--dual은 dummy data

