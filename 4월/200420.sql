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

select sysdate-1 as "����", sysdate as "����", sysdate+365 as "1�� ��" from dual;
-- �ѱ�, ����� �ֵ���ǥ

select hire_date, round((sysdate-hire_date)/365*12) as "�޼�" from employees;
select hire_date, round(months_between(sysdate,hire_date)) as "�޼�" from employees;

select hire_date as "�Ի���" ,sysdate "����" , add_months(sysdate,12) as "1�� ��" from employees;
select hire_date as "�Ի���" ,sysdate "����" , add_months(sysdate,-3) as "3���� ��" from employees;

select sysdate, next_day(sysdate,'�����') from dual;

select sysdate, last_day(sysdate) from dual;

select sysdate, to_char(sysdate,'YYYY-MM-DD') from dual;

select sysdate, to_char(sysdate,'MON/DD/DAY/DY/YYYY') from dual;
--4�� /20/������/��/2020

select sysdate, to_char(sysdate,'YYYY/MM/DD hh:mm:ss') from dual;
-- 2020/04/20 11:04:50

select hire_date, to_char(hire_date,'YYYY-MM-DD hh:mm:ss') from employees;
-- MM ��, mm ��

select birth, to_char(birth,'YYYY-MM-DD hh:mm:ss') as "char_birth" from lms_member;
-- 05/04/04, 2005-04-04 12:04:00

select birth, to_char(birth, 'YY/MM/DD DAY') from lms_member;
-- 05/04/04(DD) ������(DAY)

select birth, to_char(birth, 'YY/MM/DY DAY') from lms_member;
-- 05/04/��(DY) ������

select to_char(hire_date, 'YYYY-MM-DD hh:mm:ss DAY') as "�Ի���" from employees; 
-- hh:mi:ss�� �Ǳ� �ϴµ�..mm�� ������

select sysdate, to_char(sysdate,'YYYY/MM/DD hh24:mm:ss') from dual;

select to_char(123) from dual;
select to_char(123456789,'999,999,999') from dual;
-- 0 : �ڸ��� ���� ������� 0���� ä��, 9�� ��ä��

select salary, to_char(salary*1200, 'L999,999,999')as "��ȭ" from employees;

select salary, to_char(salary*1200, '$999,999,999')as "�޷�ǥ�õ� ��ȭ ��" from employees;
--  $3,120,000

select salary, to_char(salary*1200, '$009,999,999')as "�޷�ǥ�õ� ��ȭ ��" from employees;
-- $003,120,000

select * from employees;

select emp_name, hire_date from employees where hire_date=to_date(20050817,'YYYYMMDD');

create table m0420_01(
m_name varchar2(20),
m_date date,
v_date varchar2(20));

insert into m0420_01 values('ȫ�浿',sysdate,'20/04/19');

insert into m0420_01 values('������',sysdate,'20/04/18');

insert into m0420_01 values('������',sysdate,'20/04/17');

insert into m0420_01 values('������',sysdate,'20/04/20');

commit;

select * from m0420_01;

select * from m0420_01 where to_date(m_date,'YY/MM/DD') = to_date(sysdate,'YY/MM/DD');

select * from m0420_01 where m_date = to_date(200420,'YY/MM/DD');

delete from m0420_01;
-- ��ü �� ����

commit;

insert into m0420_01 values('ȫ�浿','20/04/20','20/04/20');

insert into m0420_01 values('������','20/04/20','20/04/18');

insert into m0420_01 values('������','20/04/20','20/04/19');

insert into m0420_01 values('������','20/04/20','20/04/27');

insert into m0420_01 values('�豸',sysdate,'20/04/20');

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01;

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01 where m_date = '20/04/20';

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01 where m_date = to_date('20/04/20');

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01 where m_date = to_date(200420,'YY/MM/DD');

select m_name, m_date,to_char(m_date,'YY/MM/DD HH:MI:SS'), v_date from m0420_01 where m_date = to_date(v_date,'YY/MM/DD');

select salary, salary +(salary*nvl(commission_pct,0)) from employees;
--nvl : null�̸� 0���� ���

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
values('aaa','123','ȫ�浿','aaa@naver.com','����� ���������');

insert into b_member (id,pw,name,email,address)
values('admin','1234','������','admin@naver.com','����� ���������');

select * from b_member;

commit;