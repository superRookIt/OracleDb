create table member2(
id varchar2(20) primary key,
--primary key�� values�� �ߺ��� �ȵ� ���⼱ id
pw varchar2(20),
name varchar2(20),
hobby1 varchar2(20),
hobby2 varchar2(20),
hobby3 varchar2(20),
hobby4 varchar2(20),
gender varchar2(20),
address varchar2(20));

insert into member2 
--value�� �� �����Ÿ� �� �� �� �־ ��
values('nate','4444','����Ʈ','����','����','0','0','��','�����');


insert into member2 (id,pw,name,hobby1,hobby2,hobby3,hobby4,gender,address) 
values('naver','1111','���̹�','����','����','����','�丮','��','��⵵');

insert into member2 (id,pw,name,hobby1,hobby2,hobby3,hobby4,gender,address) 
values('daum','2222','����','����','0','����','0','��','���ֵ�');

insert into member2 (id,pw,name,hobby1,hobby2,hobby3,hobby4,gender,address) 
values('google','3333','����','����','0','0','0','��','�̱�');

--0�� �Է��ϸ� 0�� ���� ''�� �Է��ϸ� (null)

select * from member2;

insert into member2 values('youtube','','��Ʃ��','','','','','��','�̱�');


delete from member2 where id='youtube';

delete from member2 where id='google';

commit;

update member2 set hobby1='swim' where hobby1='����';
update member2 set hobby2='read' where hobby2='����';
update member2 set hobby3='run' where hobby3='����';
update member2 set hobby4='cook' where hobby4='�丮';

update member2 set hobby2='����' where hobby2='0';
update member2 set hobby3='����' where hobby3='0';
update member2 set hobby4='����' where hobby4='0';

desc member2;


insert into member2 values('youtube','5555','��Ʃ��','����','0','0','0','��','�̱�');

select department_id, manager_id from departments;


select employee_id, emp_name, salary, hire_date from employees;

select emp_name, job_id, salary, salary*1300, salary*12*1300 from employees;

select * from employees;

select salary*1300 ,salary*1300 + (salary*1300)*nvl(commission_pct,0) from employees;
--nvl(commision_pct,0) commsion���� null����Ʈ�� ������ 0���� ����


insert into member (id,pw,name,phone) values('bce','234','������','010-2345-6789');

insert into member (id,pw,name,phone) values('cde','234','������','010-3333-4567');

insert into member (id,pw,name,phone) values('def','345','������','010-4444-5678');

select * from member ;

select * from member where id='bce';

commit;

update member set pw='234', name='������', phone='010-2222-3456' where id='bce';

update member set pw='1111' where name='bce';

select * from member where id='bce' and phone ='010-4444-5555';




create table job_member(

id varchar2(20) primary key,
name varchar2(20),
salary varchar2(15),
comm varchar2(5),
phone varchar2(50),
address varchar2(50));

commit;

insert into job_member values('a001','ȫ�浿','400','','010-1111-1111','����');
insert into job_member values('a002','������','450','1','010-1111-1111','����');

create table job_mem2(
id varchar2(20) primary key,
name varchar2(20),
salary number(5),
comm number(3),
phone varchar2(20),
address varchar2(50));


insert into job_mem2 values('a001', 'ȫ�浿', 400,1,'010-1111-1111','����');
insert into job_mem2 values('a002', '������', 450,'','010-2222-2222','���');
insert into job_mem2 values('a003', '������', 350,'','010-3333-3333','��õ');
insert into job_mem2 values('a004', '������', 550,1,'010-4444-4444','�λ�');
insert into job_mem2 values('a005', '�豸', 250,'','010-5555-5555','����');

commit;

select * from job_mem2;

select name, salary*10000,(salary*10000)+(nvl(comm,0)*500000) from job_mem2;


