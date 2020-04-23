select emp_name,department_id,
decode(department_id, 10, '총무기획부', 20, '마케팅부', 30, '구매/생산부', 40, '인사부') as dep_name from employees;

create table stu_score(
stu_num varchar2(5),
stu_name varchar2(20),
stu_kor number(3),
stu_eng number(3),
stu_math number(3),
stu_total number(3),
stu_avg number(5,2),
stu_rank number(4),
stu_date date,
stu_mdate date);


insert into stu_score values ('s0001','홍길동',100,100,100,300,300/3,0,sysdate,sysdate);
insert into stu_score values ('s0002','김유신',90,90,90,270,270/3,0,sysdate,sysdate);
insert into stu_score values ('s0003','유관순',80,80,80,240,240/3,0,sysdate,sysdate);
insert into stu_score values ('s0004','김구',70,70,70,210,210/3,0,sysdate,sysdate);
insert into stu_score values ('s0005','강감찬',60,60,60,180,180/3,0,sysdate,sysdate);
insert into stu_score values ('s0006','홍길자',99,88,80,267,267/3,0,sysdate,sysdate);

select * from stu_score;

select stu_num, stu_name,stu_total,stu_avg,
decode(stu_avg, 70, 'D학점', 80, 'C학점', 90, 'B학점', 100, 'A학점') as "학점" from stu_score;

select * from jobs;

select job_id, salary from employees where job_id='PU_MAN';

select emp_name, job_id, salary,
decode(job_id, 'PU_MAN', salary*0.05, 'ST_CLERK', salary * 0.1, 'FI_MGR', salary * 0.03) as 인상률,
decode(job_id, 'PU_MAN', salary*1.05, 'ST_CLERK', salary * 1.1, 'FI_MGR', salary * 1.03) as 인상금액 from employees
WHERE job_id in('PU_MAN', 'ST_CLERK', 'FI_MGR');

--DECODE는 조건이 일치할때만 적용
--CASE는 범위 지정이 가능

SELECT EMP_NAME, JOB_ID, SALARY,
CASE WHEN JOB_ID ='PU_MAN' THEN SALARY*0.05
WHEN JOb_ID='ST_CLERK' THEN SALARY*0.1
WHEN JOB_ID='FI_MGR' THEN SALARY*0.03
END AS 인상률 FROM EMPLOYEES;

SELECT * FROM STU_SCORE;

select stu_num, stu_name, stu_total, stu_avg,
case when stu_avg>=90 then 'A'
when stu_avg>=80 and stu_avg<90 then 'B'
when stu_avg>=70 and stu_avg<80 then 'C'
when stu_avg<70 then 'D'
end as stu_hak from stu_score;

update stu_score set stu_rank=1 where stu_num='s0001';



update stu_score set stu_hak=(
select 
case 
when stu_avg>=90 then 'A'
when stu_avg>=80 and stu_avg<90 then 'B'
when stu_avg>=70 and stu_avg<80 then 'C'
when stu_avg<70 then 'D' 
end from stu_score where stu_num='s0001')
where stu_num='s0001';

select count(*) from employees;

select avg(salary) from employees;
select min(salary) from employees;
select max(salary) from employees;
select sum(salary) from employees;


select emp_name,department_id,commission_pct from employees;

select count(commission_pct) from employees where department_id=80;
select count(department_id) from employees where department_id=80;



select department_id from employees group by department_id;
--distinct랑 비슷


select department_id, count(department_id), avg(salary) from employees group by department_id;
select department_id, count(nvl(department_id,1)), avg(salary) from employees group by department_id;
--department_id 그룹별 평균


select department_id, max(salary), min(salary) from employees group by department_id;

select department_id, count(department_id), count(commission_pct) from employees group by department_id 
having max(salary)>8000;
--그룹절 조건은 having으로 / where x

select * from employees;

alter table stu_score add(stu_hak varchar2(2));


SELECT * FROM STU_SCORE;

commit;
