create table mvc_board(
bId number(4) primary key,
bName varchar2(20),
bTitle varchar2(100),
bContent varchar2(3000),
bDate date default sysdate,
bHit number(4) default 0,
bGroup number(4),
bStep number(4),
bIndent number(4)); 


create sequence mvc_board_sequence
start with 1
increment by 1
nocycle
maxvalue 999
minvalue 1;

insert into mvc_board values(mvc_board_sequence.nextval,'������','�Խ����׽�Ʈ','�Խ����׽�Ʈ�Դϴ�',
sysdate, 0, mvc_board_sequence.currval,0,0);

select * from mvc_board;

insert into mvc_board values(mvc_board_sequence.nextval,'��������','������','�뷡 �ʹ� ���ƿ�',sysdate,0,mvc_board_sequence.currval,0,0);

commit;

--board�� b
--bIndent �鿩����