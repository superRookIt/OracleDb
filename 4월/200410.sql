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

