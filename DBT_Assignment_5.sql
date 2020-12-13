

Create table EMP12 ( EMPNO numeric(4) not null, ENAME varchar(30) not null, JOB varchar(10), MGR numeric(4), HIREDATE date, SAL numeric(7,2), DNO numeric(2) ); 
Insert into EMP12 (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DNO ) values(1000,  'Manish' , 'SALESMAN', 1003,  '2020-02-18', 600,  30) ;
Insert into EMP12 (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DNO ) values(1001,  'Manoj' , 'SALESMAN', 1003,  '2018-02-18', 600,  30) ;
Insert into EMP12 (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DNO ) values(1002 , 'Ashish', 'SALESMAN',1003 , '2013-02-18',  750,  30 );
Insert into EMP12 (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DNO ) values(1004,  'Rekha', 'ANALYST', 1006 , '2001-02-18', 3000,  10);
Insert into EMP12(EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DNO ) values(1005 , 'Sachin', 'ANALYST', 1006 ,  '2019-02-18', 3000, 10 );
Insert into EMP12 (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DNO ) values(1006,  'Pooja',  'MANAGER'  ,     null    , '2000-02-18' ,6000, 10 );

drop  table emp12;


select * from emp12;

Create table dep (dno numeric(4) not null, dname varchar(10) not null,area varchar(30));
Insert into dep(dno,dname,area) values(10,'Store','Mumbai');
Insert into dep(dno,dname,area) values(20,'Purchase','Mumbai');
Insert into dep(dno,dname,area) values(30,'Store', 'Delhi');
Insert into dep(dno,dname,area) values(40,'Marketing','Pune');
Insert into dep(dno,dname,area) values(50,'Finance','Delhi');
Insert into dep(dno,dname,area) values(60,'Accounts','Mumbai');

select * from dep;

/*1.	Write a Procedure that accepts values of two non-zero numbers using
 IN parameter and perform addition, subtraction, multiplication, division and print.*/
/*
delimiter $$
create procedure pro1(in var1 int,in var2 int)
begin 

select var1+var2;
select var1-var2;
select var1*var2;
select var1/var2;
end$$
call pro1(2,3);
*/


 /*2.	Write a Procedure to print the string in
 REVERSE order. Take the input using IN parameter. (Ex .Database , o/p :esabatad)*/
 
 /*
 delimiter $$
 create procedure pro2( var varchar(50))
 begin
 select reverse(var);
 end$$
 call pro2('database');
*/


 /*3.	Write a Procedure to display top 5 
 employee based on highest salary and display employee number, employee name and salary.*/
 
/*
delimiter $$
 create procedure pro_3()
 begin
select EMPNO ,ENAME, sal from emp12 order by sal desc limit 5;
end;
end$$
call pro_3();
*/


/*4.	Write a Procedure to create table emp_test
 with e_id integer, e_name varchar(10), e_joining_date date as columns*/
/*
delimiter $$
 create procedure pro_4()
 begin 
 create table emp_test(e_id integer(10),e_name varchar(10),e_joining_date date);

 end$$
 call pro_4();
 
select * from emp_test;
*/

/*5.	Write a Procedure to add a department row in the DEPT table with the following values for columns*/
 /*
 delimiter $$
 create procedure pro_5()
 begin
 Insert into dep(dno,dname,area) values(70,'Store','nagpur');
end$$
 
 call pro_5();
*/

/*6.	Write a program that declares an integer variable called num, 
 assigns a value to it and print, the value of the variable itself, its square, and its cube.*/
 /*
 delimiter $$
 
 create procedure pro_6(in num int)
 begin
 
 select num;
 select num*num;
 select num*num*num;
end$$

call pro_6(5);
*/

/*
delimiter $$
 create procedure pro_7(out b int)
 begin
 declare c int default 10;
declare a int default 20;
set b1=a+c;
 
end$$

call pro_7(@b1);
select @b1;
*/
/* 8.	Write a program that demonstrates the usage of IN and OUT parameters.*/


delimiter $$
CREATE PROCEDURE pro_9(INOUT STR VARCHAR(10))
BEGIN
SET STR=(SELECT REVERSE(STR));
END $$
SET @STR='DATABASE1';
end$$
CALL pro_9(@STR);
SELECT @STR AS REV;



show triggers in assignment3;