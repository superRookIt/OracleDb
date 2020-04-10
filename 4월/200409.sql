
create table member2(
id varchar2(20) primary key,
--primary key는 values가 중복이 안됨 여기선 id
pw varchar2(20),
name varchar2(20),
hobby1 varchar2(20),
hobby2 varchar2(20),
hobby3 varchar2(20),
hobby4 varchar2(20),
gender varchar2(20),
address varchar2(20));

insert into member2 
--value값 다 넣을거면 열 값 안 넣어도 됨
values('nate','4444','네이트','수영','독서','0','0','여','서울시');

insert into member2 (id,pw,name,hobby1,hobby2,hobby3,hobby4,gender,address) 
values('naver','1111','네이버','수영','독서','조깅','요리','남','경기도');

insert into member2 (id,pw,name,hobby1,hobby2,hobby3,hobby4,gender,address) 
values('daum','2222','다음','수영','0','조깅','0','여','제주도');

insert into member2 (id,pw,name,hobby1,hobby2,hobby3,hobby4,gender,address) 
values('google','3333','구글','수영','0','0','0','남','미국');
                 
insert into member2 values('youtube','','유튜브','','','','','여','미국');

--0을 입력하면 0이 들어가고 ''을 입력하면 (null)

select * from member2;

delete from member2 where id='youtube';
delete from member2 where id='google';

commit;

update member2 set hobby1='swim' where hobby1='수영';
update member2 set hobby2='read' where hobby2='독서';
update member2 set hobby3='run' where hobby3='조깅';
update member2 set hobby4='cook' where hobby4='요리';

update member2 set hobby2='없음' where hobby2='0';
update member2 set hobby3='없음' where hobby3='0';
update member2 set hobby4='없음' where hobby4='0';

desc member2;

insert into member2 values('youtube','5555','유튜브','수영','0','0','0','여','미국');

select department_id, manager_id from departments;

select employee_id, emp_name, salary, hire_date from employees;
select emp_name, job_id, salary, salary*1300, salary*12*1300 from employees;
select * from employees;              

select salary*1300 ,salary*1300 + (salary*1300)*nvl(commission_pct,0) from employees;
--nvl(commision_pct,0) commsion값에 null포인트가 있으면 0으로 변경

insert into member (id,pw,name,phone) values('bce','234','김유신','010-2345-6789');
insert into member (id,pw,name,phone) values('cde','234','유관순','010-3333-4567');
insert into member (id,pw,name,phone) values('def','345','강감찬','010-4444-5678');

select * from member ;
select * from member where id='bce';

commit;

update member set pw='234', name='이율곡', phone='010-2222-3456' where id='bce';
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

insert into job_member values('a001','홍길동','400','','010-1111-1111','서울');
insert into job_member values('a002','유관순','450','1','010-1111-1111','서울');

create table job_mem2(
id varchar2(20) primary key,
name varchar2(20),
salary number(5),
comm number(3),
phone varchar2(20),
address varchar2(50));

insert into job_mem2 values('a001', '홍길동', 400,1,'010-1111-1111','서울');
insert into job_mem2 values('a002', '유관순', 450,'','010-2222-2222','경기');
insert into job_mem2 values('a003', '김유신', 350,'','010-3333-3333','인천');
insert into job_mem2 values('a004', '강감찬', 550,1,'010-4444-4444','부산');
insert into job_mem2 values('a005', '김구', 250,'','010-5555-5555','대전');

commit;

select * from job_mem2;

select name, salary*10000,(salary*10000)+(nvl(comm,0)*500000) from job_mem2;
