select * from tab;

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

select 34.78, round(34.7558,2), floor(34.78) from dual; --34.76
select 34.78, round(2834.6789,-1), floor(34.78), trunc(34.5678) from dual; --34.78/2830/34/34
--round(����,�ݿø� �ڸ���) , floor ����

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

