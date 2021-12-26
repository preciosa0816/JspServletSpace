create database board default character set utf8;
CREATE USER 'jspexam'@'localhost' IDENTIFIED BY 'jsppw';
CREATE USER 'jspexam'@'%' IDENTIFIED BY 'jsppw';
GRANT ALL PRIVILEGES ON board.* TO 'jspexam'@'localhost';
GRANT ALL PRIVILEGES ON board.* TO 'jspexam'@'%';

create table member2(
	id varchar(20)
)