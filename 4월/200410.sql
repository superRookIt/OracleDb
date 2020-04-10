--1521 내부 포트
--8080 외부 포트

select * from tab;

drop table member;

create table mem(
id varchar2(20) primary key,
pw varchar2(20),
name varchar2(20),
phone varchar2(20));

commit;

desc mem;

create table mem2(
id VARCHAR2(20) primary key,
pw VARCHAR2(20),
name VARCHAR2(20),
hobby1 number(1),
hobby2 number(1),
hobby3 number(1),
hobby4 number(1),
gender varchar(3),
address varchar(50));

--number(precision,scale)/ precision 소수점 포함 전체 자리수, scale은 소수점 이하 자리수고 scale 생략하면 정수값만 저장
--varchar2 가변적 길이 문자열 저장

select * from employees;

select employee_id as 사번, emp_name as "Name", salary as 월급, salary+(salary*nvl(commission_pct,0)) as "월급(인센티브포함)", 
salary*12 as 연봉 from employees;
--nvl : null포인트 함수
--as를 붙이면 열 이름 변경가능, 별칭(alias)
--""로 묶으면 특수문자까지 별칭에 입력 가능, 대소문자 구별 가능
--그냥 as 별칭 입력하면 대문자

create table koitt_mem(
id varchar2(20) primary key,
name varchar2(20),
pay number(7),
t_day number(2));

commit;

update koitt_mem set id ='ko2' where id='ko3'; 

insert into koitt_mem (id,name,pay,t_day) values ('ko1','허영무','30000','20');
insert into koitt_mem (id,name,pay,t_day) values ('ko2','조준호','30000','20');
insert into koitt_mem (id,name,pay,t_day) values ('ko3','홍길동','30000','');

select * from koitt_mem;

select name, pay*nvl(t_day,0) as 이번달수당 from koitt_mem;

select * from employees;

select employee_id as 사번, emp_name as 사원이름, email as 이메일, phone_number as 연락처, hire_date as 입사일,
salary as 월급, manager_id as "매니저 아이디", commission_pct as 인센티브 from employees; 

select emp_name, department_id from employees;

select distinct department_id from employees order by department_id ASC;
--distinct 중복 제거

select employee_id from employees order by employee_id desc;

select * from employees order by manager_id desc, salary desc;

select distinct job_id from employees;

select * from employees;

select distinct manager_id from employees order by manager_id asc;

select * from employees where salary >=5000 order by salary asc;

select * from employees where salary+(salary*nvl(commission_pct,0))>8000 order by salary asc;

select salary from employees;

select count(salary) from employees where salary != 10000;
--count  : 개수를 출력

select salary from employees where salary >= 10000;

select * from employees where employee_id = 200;
--사번 200번

select * from employees where employee_id >=150;
--사번 150 이상

select employee_id, emp_name, salary from employees where salary>=4000 and salary<=8000 order by salary asc;
--and, between

select * from employees;

select * from employees where emp_name='Pat Fay';

select * from employees where emp_name like 'P%';
--like p%: p로 시작되는 문자

select * from employees where emp_name like '%P%';
--like %p%: p가 들어가 있는 모든 

select * from employees where emp_name like '_o%';
--두번째에 o가 들어간 ( _ : 자리수)

select * from employees where emp_name like '__o%';
--세번째에 o가 들어간

select * from employees where hire_date <'07/01/01' order by hire_date asc;

select * from employees;

select count(*) from employees where salary>5000 and department_id =50 ;

select * from employees where salary>=4000 and department_id=30;

select * from employees where salary = 3000 or salary = 4000 or salary = 5000 or salary = 6000 or salary = 10000 order by salary asc;

select *  from employees where employee_id=140 or employee_id=150 order by employee_id;

--
select *  from employees where employee_id>=150 and employee_id<=160 order by employee_id;
select *  from employees where employee_id between 150 and 160 order by employee_id;
--150~160번, between and

select * from employees where salary<5000 or salary>10000 order by salary;
select *  from employees where salary not between 5000 and 10000 order by salary;
--not between and

select * from employees where hire_date between '00/01/01' and '05/12/31' order by hire_date;

select * from employees order by emp_name asc;
select * from employees order by emp_name desc;

select * from employees where salary=3000 or salary=4000 or salary=5000;
select * from employees where salary in(3000,4000,5000);
--in('','','')

select * from employees where salary in(3000,4000,5000) or employee_id>=190;
select * from employees where salary in(3000,4000,5000) and employee_id>=190;



