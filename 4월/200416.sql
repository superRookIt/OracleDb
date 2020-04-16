create table lms_member(
id varchar2(20) primary key,
name varchar2(20),
email varchar2(30),
address varchar2(50),
phone varchar2(13),
birth date,
gender varchar2(6),
news varchar2(9),
sms varchar2(9));

commit;

insert into lms_member values('hh111','홍길동','hh111@naver.com','가산 제이플라츠',
'010-1111-1111','1999/11/11','여성','아니요','예');

alter table lms_member add(pw varchar2(20));
-- , 넣지 않음!!!!

select * from lms_member;

update lms_member set pw='1111' where id='hh111';

alter table lms_member add(phone2 varchar2(4), phone3 varchar2(4));

alter table lms_member modify(email varchar2(40));

desc lms_member;

alter table lms_member drop column phone2;

alter table lms_member drop column phone3;

drop table lms_member;

commit;

create table lms_member(
id VARCHAR(20) primary key,
pw varchar2(20),
name varchar2(30),
email varchar2(30),
address varchar2(50),
phone varchar2(20),
birth date,
gender varchar2(6),
news varchar2(9),
sms varchar2(9));

select * from lms_member;

commit;

insert into lms_member values('hh111','1111','홍길동','hh1111@naver.com','가산디지털단지 제이플라츠','010-1111-1111','2000/11/11',
'여성','아니요','예');

commit;

select * from lms_member;

select id,pw from lms_member where id='hh111' and pw='1111';

insert into lms_member values('hh222','2222','유관순','hh2222@naver.com','가산디지털단지 제이플라츠','010-1111-1111','1990/11/11',
'여성','예','예');

insert into lms_member values('hh333','3333','유재석','hh3333@naver.com','가산디지털단지 제이플라츠','010-1111-1111','2000/11/11',
'남성','아니요','아니요');

alter table lms_member modify(address varchar2(100));

commit;

desc lms_member;

alter table lms_member modify(gender varchar2(20), news varchar2(20), sms varchar2(20));

update lms_member set email='admin@daum.net', name='임요원', pw='3434', address='가산 제이플라츠', phone='010-3434-3434',
birth='1998/01/01',gender='남성', news='아니요', sms='아니요' where id='hh111';

ROLLBACK;

select * from lms_member;

commit;

select * from lms_member order by id;