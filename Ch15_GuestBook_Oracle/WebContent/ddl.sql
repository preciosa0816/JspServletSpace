create table guestbook_message(
	message_id int not null auto_increment primary key,
    guest_name varchar(50) not null,
    password varchar(10) not null,
    message text not null
) engine=InnoDB default character set utf8;

---Oracle
create table guestbook_message(
	message_id int not null primary key,
    guest_name varchar(50) not null,
    password varchar(10) not null,
    message long not null
)

create SEQUENCE message_id_seq INCREMENT BY 1 START WITH 1;