
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

select 34.78, round(34.7558,2), floor(34.78) from dual; 
--34.76

select 34.78, round(2834.6789,-1), floor(34.78), trunc(34.5678) from dual; 
--34.78/2830/34/34

-- ★ round(숫자,반올림 자리수[-1이면 소수점쪽 말고 왼쪽으로]) , floor 버림 ★

select  distinct manager_id from employees where manager_id=100 order by manager_id asc;
--distinct 중복제거

select distinct manager_id from employees where manager_id <> 100 order by manager_id asc;
-- <> : 아닌 거 

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

select * from employees where department_id=10 or job_id like '%MAN%';

select * from employees where emp_name like 'T%' or emp_name like 'S%' or emp_name like 'A%' order by emp_name;

select * from employees where department_id=10 or department_id=50 or department_id=60 order by department_id;

select * from employees where department_id in(10,50,60) order by department_id;
-- in(, , ,)

select * from employees order by hire_date asc;

select * from employees order by salary desc, emp_name asc;

select -10, abs(-10) from dual;
--dual 가상 테이블

select 34.7890, round(34.7890,-1) from dual;
--34.789/30

select trunc(34.5678,2),trunc(34.5678,-1), trunc(34.5678) from dual;
--34.56/30/34

select trunc(34.5678,2), floor(34.5678) from dual;
--34.56/34 
--floor 소수점 이하는 무조건 버림
--trunc는 소수점 자리를 정해서 버림

select mod(27,2), mod(27,5), mod(27,7) from dual;
--1/2/6
--mod는 나머지

select * from employees where mod(employee_id,2)!=0 order by employee_id;
--사원번호 홀수

select * from employees where mod(employee_id,10)=0 order by employee_id;
--사원번호 10의 배수

select * from employees where mod(employee_id,2)=1 and emp_name like '%A%' order by employee_id;

