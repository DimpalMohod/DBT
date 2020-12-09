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

SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y') from dual;


show databases;
use assignment2;
show tables;

 INSERT INTO SUBJECTS VALUES ('ORA','ORACLE DATABASE 10g');
 INSERT INTO SUBJECTS VALUES ('JAVA','JAVA LANGUAGE');
INSERT INTO SUBJECTS VALUES ('JEE','JAVA ENTEPRISE EDITION');
 INSERT INTO SUBJECTS VALUES ('VB','VISUAL BASIC.NET');
INSERT INTO SUBJECTS VALUES ('ASP','ASP.NET');



INSERT INTO PUBLISHERS VALUES (1,'WILLEY','WDT@VSNL.NET','91-11-23260877');
 INSERT INTO PUBLISHERS VALUES (2,'WROX','INFO@WROX.COM',NULL);
INSERT INTO PUBLISHERS VALUES (3,'TATA MCGRAW-HILL','FEEDBACK@TATAMCGRAWHILL.COM','91-11-33333322');
INSERT INTO PUBLISHERS VALUES (4,'TECHMEDIA','BOOKS@TECHMEDIA.COM','91-11-33257660');



INSERT INTO AUTHORS VALUES (101, 'HERBERT SCHILD','HERBERT@YAHOO.COM',NULL);
INSERT INTO AUTHORS VALUES (102, 'JAMES GOODWILL','GOODWILL@HOTMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (103, 'DAVAID HUNTER','HUNTER@HOTMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (104, 'STEPHEN WALTHER','WALTHER@GMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (105, 'KEVIN LONEY','LONEY@ORACLE.COM',NULL);
INSERT INTO AUTHORS VALUES (106, 'ED. ROMANS','ROMANS@THESERVERSIDE.COM',NULL);



 INSERT INTO TITLES VALUES (1001,'ASP.NET UNLEASHED',4,'ASP','2012-04-02','P',540);
 INSERT INTO TITLES VALUES (1002,'ORACLE10G COMP. REF.',3,'ORA','2005-05-01','P',575);
INSERT INTO TITLES VALUES (1003,'MASTERING EJB',1,'JEE','2005-02-03','P',475);
 INSERT INTO TITLES VALUES (1004,'JAVA COMP. REF',3,'JAVA','2005-02-04','P',499);
 INSERT INTO TITLES VALUES (1005,'PRO. VB.NET',2,'VB','2015-06-05','P',450);
desc titles;
select * from titles;


 INSERT INTO TITLEAUTHORS VALUES (1001,104,1);
INSERT INTO TITLEAUTHORS VALUES (1002,105,1);

INSERT INTO TITLEAUTHORS VALUES (1003,106,1);

 INSERT INTO TITLEAUTHORS VALUES (1004,101,1);

 INSERT INTO TITLEAUTHORS VALUES (1005,103,1);
 INSERT INTO TITLEAUTHORS VALUES (1005,102,2);
desc titleauthors;
select * from titleauthors;
 /*
1. List pname, phone, email from Publishers.
2. List aname, phone from Authors.
3. List titleid, title, pubdate from Titles.
4. List auid, titleid, importance from titleauthors.
*/

Select pname,phone,email from publishers;
select aname, phone from Authors;
select  titleid, title, pubdate from Titles;
Select  auid, titleid, importance from titleauthors;

desc publishers;
select * from publishers;


/*
1. select subject name "oracle" from subjects table.
2. select subject name starts whith 'j'.
3. select subject name which contains ".net" .
4. select author name ends whith 'er'.
5. select publishers name which contains "hill".
*/
desc subjects;
select * from subjects;

/*like*/
select sname from subjects where sname='oracle database 10g';
select sname from subjects where sname like 'j%';
select sname from subjects where sname like '%.net';
select sname from subjects where sname like 'er%';
select sname from subjects where sname like '%.net';

select * from publishers;
select pname from publishers where pname like '%hill';
select * from publishers where pname in('techmedia','wrox');
/*relational operator*/
Select * from titles;
select title from titles where price <500;
select title from titles where pubdate < '2012-04-03';
select subid from titles where subid='java' or subid= 'jee';

select * from authors;
select aname from authors where auid>103;

select * from titles where titleid=1001 or price>400;

select max(price) as price from titles;
select avg(importance) from titleauthors;
select count(auid) from authors;
select sum(price) from titles;


/*date*/
select title from titles where month=04;

SELECT MONTH('2012-04-02') AS Month;
/*select extract (year from 2020-12-08);*/
select year('2020-12-08') as year;
select month('2020-12-08') as month;
select last_day('2005-02-04');

show tables;
drop table  employee;
create table employee(emp_id int,emp_name varchar(50));
insert into employee values(100,'ashish'),(101,'rahul'),(102,'rajesh');
/*alter table employee modify emp_name varchar(2);*/
update employee set emp_name='scott' where emp_id=101;
select * from employee;
desc employee;
truncate employee;
drop table emp;
create table emp(emp_id int,esalary float(40));
insert into emp values (1,1234.567),(2,1530.124),(3,1656.456),(4,1756.124);
select * from emp;
select round(1234.567,2);
select truncate(1345.758,2);
select ceil(1530.124);
select floor(1656.556);
select sign(-15);
select sign(115);
select 24%4; 
/*select  mod(24/4);
remainder*/
select sqrt(49);
select power(2,2);

select ascii(emp_name) from employee;
select char_length(emp_name) from employee;
select concat("harry ","learning ","java ");
select field("q","s","q","l");
select insert("w3schools.com",1,9,"exam");
select lcase("IT'S AWESOME");
SELECT LENGTH("Sql tutorials");
select ltrim("            abcdefgh") ;
select repeat("sql exam",3);
select strcmp("mock interview","mock interview");
select substring("java os ds",1,4) ;
select upper("java tutorial");


SELECT CURRENT_TIMESTAMP;
SELECT Month('2017/08/25') AS Month;