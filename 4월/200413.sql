
create table mem3(
id varchar2(20) primary key,
pw varchar2(20),
name varchar2(20),
b_date date);

--date�� ��¥ 00/00/00 

insert into mem3 values('abc','1234','ȫ�浿','20/04/13');

select sysdate from dual; 
--���ο� ���� ������ִ�

insert into mem3 values('bcd','234','������',sysdate);
--sysdate ���� ��¥ 

select * from mem3;

select * from employees;

select sysdate-hire_date as �ٹ��ϼ�, hire_date , hire_date -1 from employees;
--sysdate-hire_date(���糯¥ - hire_date)

select 34.78, round(34.7558,2), floor(34.78) from dual; 
--34.76

select 34.78, round(2834.6789,-1), floor(34.78), trunc(34.5678) from dual; 
--34.78/2830/34/34

--�� round(����,�ݿø� �ڸ���[-1�̸� �Ҽ����� ���� ��������]) , floor ���� ��

select  distinct manager_id from employees where manager_id=100 order by manager_id asc;
--distinct �ߺ�����

select distinct manager_id from employees where manager_id <> 100 order by manager_id asc;
-- <> �ƴ� �� 

select distinct manager_id from employees where manager_id is null;

select distinct manager_id from employees where manager_id is not null order by manager_id asc;

select * from employees where salary between 5000 and 10000 order by salary;

select * from employees where emp_name='Pat Fay' order by salary;

select * from employees where hire_date >='2007/01/01' order by salary;

select * from employees;

desc employees;
--desc [���̺��] �� �ʵ��� ������ �� �� ����

commit;

select sysdate -1 as ����, sysdate as ����,sysdate+1 as ���� from dual;
--dual�� dummy data

select * from employees where department_id=10 or job_id like '%MAN%';

select * from employees where emp_name like 'T%' or emp_name like 'S%' or emp_name like 'A%' order by emp_name;

select * from employees where department_id=10 or department_id=50 or department_id=60 order by department_id;

select * from employees where department_id in(10,50,60) order by department_id;
-- in(, , ,)

select * from employees order by hire_date asc;

select * from employees order by salary desc, emp_name asc;

select -10, abs(-10) from dual;
--dual ���� ���̺�

select 34.7890, round(34.7890,-1) from dual;
--34.789/30

select trunc(34.5678,2),trunc(34.5678,-1), trunc(34.5678) from dual;
--34.56/30/34

select trunc(34.5678,2), floor(34.5678) from dual;
--34.56/34 
--floor �Ҽ��� ���ϴ� ������ ����
--trunc�� �Ҽ��� �ڸ��� ���ؼ� ����

select mod(27,2), mod(27,5), mod(27,7) from dual;
--1/2/6
--mod�� ������

select * from employees where mod(employee_id,2)!=0 order by employee_id;
--�����ȣ Ȧ��

