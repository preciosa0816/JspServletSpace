--Oracle

--jsp 만들기(system 계정)
CREATE USER jsp_db 
IDENTIFIED BY jsp_db 
DEFAULT TABLESPACE users 
TEMPORARY TABLESPACE temp 
PROFILE DEFAULT;
--시스템 계정에서 마당DB에 연결과 자원사용에 대한 권한 부여
GRANT CONNECT, RESOURCE TO jsp_db;
--DB안에 있는 VIEW 와 SYNONYM에 대한 사용권한 부여
GRANT CREATE VIEW, CREATE SYNONYM TO jsp_db;
ALTER USER jsp_db ACCOUNT UNLOCK;

create table member(
    id varchar2(15),
    password varchar2(10),
    name varchar2(15),
    age number,
    gender varchar2(5),
    email varchar2(30),
    PRIMARY key(id)
)