create database assignment7;
use assignment7;
drop table ord_master;
create table ord_master(ord_no int primary key,cust_cd char(10),status char(10));
insert into ord_master values(1,'C1','P');
drop table ord_dtl;
create table ord_dtl(ord_no int,prod_cd char(10), Qty char(15),constraint fk foreign key(ord_no) references ord_master(ord_no));
insert into ord_dtl values(1,'P1','100'),(1,'P2','200');
drop table prod_master;
create table prod_master(prod_cd char(10) primary key,prod_name varchar(20),qty_in_stock int(20),booked_qty int(20));
insert into prod_master values ('P1','floppies',10000,1000),('P2','printers','5000',600),('P3','moderns',3000,200);
select * from ord_master;
select * from ord_dtl;
select * from prod_master;

delimiter $$
create trigger q1 
before insert on ord_dtl
for each row
begin
update prod_master set
booked_qty=booked_qty+new.qty where prod_cd=new.prod_cd;
end $$

insert into ord_dtl values(1,'P3',200);
-- delete from ord_dtl where prod_cd='p3';

deleimiter $$
create trigger q2 
after delete on ord_dtl
for each row
begin 
update prod_master set
booked_qty=booked_qty-old.qty where 
prod_cd=old.prod_cd;
end$$
create table dept_sal(dept_no int,total_salary int);
insert into dept_sal values(30,1950),(10,12000);
select * from dept_sal;
select * from emp12;
use assignment3;
desc dept_sal;
drop table dept_sal;
insert into emp12 values(1007,'srk','proj engn',1005,'2018-02-14',5000,4);

delimiter $$
create trigger q4 after
delete on emp12
for each row
begin 
update dept_sal set
sal=sal- old.sal where
dno=old.dno;
end$$

delete from emp12 where empno=1007;














/*
-- trigger example by me
use assignment3;
show tables;
select * from student;
insert into student values(1,'harry','potter','gfhfdvhh','nyc',500),(2,'salim','khan','ddudsuuds','hyd',410),(3,'sam','bhatia','dhdshdsh','rjs',215),(4,'raj',"kumar",'djdidnf','delhi',635);
show triggers in assignment3;

-- before insert

create trigger sample_trigger
before insert on student
for each row
set new.marks=new.marks+100;

-- insert record into table

insert into student values(5,'dimpal','mhd','fhfjfj','us',680);
-- value of marks updated from 680 to 780 


-- after insert 
-- updating student marks from student table to final_mark table
-- trigger cal created, and jay marks updates by +100 = 500.
 create trigger cal
after insert 
on student
for each row
insert into final_mark values(new.marks);

drop trigger cal;
drop table final_mark;
create table final_mark(total_marks int );

insert into student(studid,fname,lname,address,city,marks)values(7,'jay','sharma','sdsdsd','uk',400);
select * from student;
*/