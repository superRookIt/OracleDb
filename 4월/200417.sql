create table m_0417(
id number(4) primary key,
name varchar2(20) not null,
pw varchar2(20) not null,
phone varchar2(20));

--not null
--primary key�� not null and unique

commit;

desc m_0417;

insert into m_0417 values(1111,'ȫ�浿','1234','010-1111-1111');

select * from m_0417;

update m_0417 set id=1 where id=1111;

insert into m_0417 values(2,'������','2345','010-2222-2222');

--creat, alter, drop �ڵ����� commit ��
--insert,update,delete,select : commit ����� ��
--�ѹ��� commit ��������

insert into m_0417 values(3,'������','4567','010-3333-3333');

--insert into m_0417 values(4,'','7890','010-4444-4444'); null �� ���� x

insert into m_0417 values(4,'�豸','7890',''); 

create table m_0417_2(
id number(4) primary key,
pw varchar2(20) not null,
name varchar2(20) unique,
phone varchar2(20));

--unique

insert into m_0417_2 values(1,'1234','ȫ�浿','010-1111-1111');

insert into m_0417_2 values(2,'2345','ȫ����','010-2222-2222');

select * from m_0417_2;

insert into m_0417_2 values(3,'3456','','010-3333-3333'); 
--unique null�� ����

drop table m_0417;
drop table m_0417_2;

create table m_0417_3(
id number(4) primary key,
pw varchar2(20) not null,
name varchar2(20) unique not null,
phone varchar2(20));

select * from departments;

select * from employees;

create table m_0417_4(
id number(4) primary key,
name varchar2(20) not null,
salary number(4) check (salary between 500 and 5000),
gender varchar2(1) check (gender in('M','F')));

--CHECK
--��ҹ��� ������

insert into m_0417_4 values(1,'ȫ�浿','500','M');

insert into m_0417_4 values(2,'ȫ����','500','F');

delete m_0417_4 where name='ȫ����';

select * from m_0417_4;

commit;

create table dept01(
id number(4) primary key,
name varchar2(20) not null,
city varchar2(20) check(city in('����','���','��õ')),
phone varchar2(20) unique);

insert into dept01 values (1,'����','����','010-1111-1111');
insert into dept01 values (2,'����','���','010-1112-1112');
insert into dept01 values (3,'����','��õ','010-1113-1113');
insert into dept01 values (4,'����','��õ','010-1114-1114');
insert into dept01 values (5,'����','���','010-1115-1115');

select * from dept01;

create table student(
s_num number(4) primary key,
s_name varchar2(20) not null,
s_kor number(3) check(s_kor <=100),
s_eng number(3) check(s_eng <=100),
s_math number(3) check(s_math<=100),
s_avg number(4,1),
s_total number(3) check(s_total<=300),
s_rank number(5) default 0,
s_address varchar2(20) default '����',
s_date date default sysdate);

--default �����Ͱ��� �ƹ��͵� �� ������ ���� ��

commit;

--insert into student (s_num, s_name, s_kor, s_eng, s_math, s_total, s_avg) 
--values (1,'ȫ�浿',100,100,100,(s_kor+s_eng+s_math),(s_kor+s_eng+s_math)/3);

insert into student (s_num, s_name, s_kor, s_eng, s_math, s_total, s_avg) 
values (1,'ȫ�浿',100,100,100,300,300/3);

select * from student;

create sequence b_seq
increment by 1
start with 1
minvalue 1
maxvalue 10000
nocycle;

-- ������

desc student;

alter table student modify(s_num number(5));
delete from student where s_num=1;
select * from student;

insert into student (s_num, s_name, s_kor, s_eng, s_math, s_total, s_avg) 
values (b_seq.nextval, 'ȫ�浿', 100, 100, 100, 300, 300/3);

insert into student (s_num, s_name, s_kor, s_eng, s_math, s_total, s_avg) 
values (b_seq.nextval, '������', 100, 80, 90, 270, 270/3);

select b_seq.currval from dual;
--������ ������� ����� ���� 

create sequence d_seq
increment by 2
start with 1000
minvalue 1000
maxvalue 10000
nocycle;

select d_seq.currval from dual;
--������ ������� ����� ���� 


drop table dept2;

create table dept2(
num number(10) primary key,
name varchar(20) not null,
d date default sysdate);

commit;

insert into dept2 values(d_seq.nextval, 'ȫ�浿','');

select * from dept2;

alter sequence d_seq
increment by 1;

create table m2(
id varchar2(20) primary key,
name varchar2(20) not null,
pw varchar2(20) not null,
phone1 varchar2(20),
phone2 varchar2(20),
phone3 varchar2(20),
gender varchar2(20));

insert into m2 values('ccc','���','1234','010','3111','2222','����');

commit;

CREATE table member3(
turn number(10),
id varchar2(20) primary key,
pw varchar2(20) not null,
name varchar2(20) not null,
email varchar2(100) not null,
address varchar2(100),
phone varchar2(20),
birth date,
gender varchar2(10) check(gender in('����','����')),
news varchar2(10),
sms varchar2(10));

--order�� �̸����� ����� �� ����...!!

create sequence three
increment by 1
start with 0
minvalue 0
maxvalue 100
nocycle;

drop table member3;

insert into member3 values(three.nextval,'aaaa','1234','������','gana@naver.com','����� ��õ��','010-1111-1111','1990/01/01','����','��','�ƴϿ�');
insert into member3 values(three.nextval,'baaa','2234','������','gana1@naver.com','����� ��õ��1','010-1111-1111','1990/01/01','����','��','��');
insert into member3 values(three.nextval,'caaa','3234','�ٳ���','gana2@naver.com','����� ��õ��2','010-2111-1111','1991/01/01','����','�ƴϿ�','��');
insert into member3 values(three.nextval,'daaa','4234','�󳪴�','gana3@naver.com','����� ��õ��3','010-3111-1111','1992/01/01','����','��','�ƴϿ�');
insert into member3 values(three.nextval,'eaaa','5234','������','gana4@naver.com','����� ��õ��4','010-4111-1111','1993/01/01','����','�ƴϿ�','�ƴϿ�');

select * from member3;


