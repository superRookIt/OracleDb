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

insert into lms_member values('hh111','ȫ�浿','hh111@naver.com','���� �����ö���',
'010-1111-1111','1999/11/11','����','�ƴϿ�','��');

alter table lms_member add(pw varchar2(20));
-- , ���� ����!!!!

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

insert into lms_member values('hh111','1111','ȫ�浿','hh1111@naver.com','��������д��� �����ö���','010-1111-1111','2000/11/11',
'����','�ƴϿ�','��');

commit;

select * from lms_member;

select id,pw from lms_member where id='hh111' and pw='1111';

insert into lms_member values('hh222','2222','������','hh2222@naver.com','��������д��� �����ö���','010-1111-1111','1990/11/11',
'����','��','��');

insert into lms_member values('hh333','3333','���缮','hh3333@naver.com','��������д��� �����ö���','010-1111-1111','2000/11/11',
'����','�ƴϿ�','�ƴϿ�');

alter table lms_member modify(address varchar2(100));

commit;

desc lms_member;

alter table lms_member modify(gender varchar2(20), news varchar2(20), sms varchar2(20));

update lms_member set email='admin@daum.net', name='�ӿ��', pw='3434', address='���� �����ö���', phone='010-3434-3434',
birth='1998/01/01',gender='����', news='�ƴϿ�', sms='�ƴϿ�' where id='hh111';

ROLLBACK;

select * from lms_member;

commit;

select * from lms_member order by id;