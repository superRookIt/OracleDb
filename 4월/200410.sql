--1521 ���� ��Ʈ
--8080 �ܺ� ��

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

--number(precision,scale)/ precision �Ҽ��� ���� ��ü �ڸ���, scale�� �Ҽ��� ���� �ڸ����� scale �����ϸ� �������� ����
--varchar2 ������ ���� ���ڿ� ����


select * from employees;
select employee_id, emp_name, salary as ����, salary+(salary*nvl(commission_pct,0)) as "����(�μ�Ƽ������)", salary*12 as ���� from employees;
--nvl : null����Ʈ �Լ�
--as�� ���̸� �� �̸� ���氡��, ��Ī(alias?)
--""�� ������ Ư�����ڱ��� ��Ī�� �Է� ����



