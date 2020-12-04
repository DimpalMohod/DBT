show databases;
use mysql;


create database student;
show databases;
create table info (name varchar(20), roll_no int(4));
show tables;
select * from info;
insert into info (name,roll_no) values ("dimpal",10);
select * from info;


create database assignment1;
show databases;
use assignment1;
create table member(Member_Id int(5),Member_Name varchar(30),Member__address varchar(50),Acc_Open_Date Date,Membership_type varchar(20),Penalty_Amount int(7));
show tables;
select * from member;
insert into member(Member_Id,Member_Name, Member__address,acc_open_date, Membership_type) values(1,	"Richa Sharma"	,"Pune",'2010-12-05',	"Lifetime"),(2,"Garima Sen",	"Pune",(curdate()),"Annual");  
alter table member drop Penalty_Amount;
alter table member add Penalty_Amount int(7);

create table Books(Book_No int(6),Book_name varchar(30),Author_name varchar(30),cost int(7),category char(10));
select * from books;
insert into books(Book_No,	Book_name,	Author_name,	Cost,	Category) values(101,	"Let us C"	,"Denis Ritchie",	450,"System");
insert into books values (102,	'Oracle – Complete Ref'	,'Loni',	550	,'Database'),(103	,'Mastering SQL',	'Loni',	250,'Database'),(104	,'PL SQL-Ref',	'ScottUrman',	750	,'Database');
create table Issue(lab_issue_id int(10),book_no int(6),member_id int(5),issue_date date,return_date date);
insert into issue(lab_issue_id,book_no,member_id ,issue_date ,return_date )values (7001,101,1,'2010-12-06',null),(7002,102,2,'2025-12-06',null),(7003,104,1,'2015-01-06',null),(7004,101,1,'2004-07-06',null),(7005,104,1,'2015-11-15',null),(7006,101,3,'2018-02-06',null);

update books set cost=300 where book_no=103;

select * from issue;
drop table issue;
