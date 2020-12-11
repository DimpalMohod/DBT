use assignment3;
select * from employee;
select * from department;

-- 1. select dept_name and emp_name where dept_id is same.
select employee.emp_name,department.dept_name
from employee inner join department
on employee.dept_id=department.dept_id;

-- 2. select all from both tables where dept_id is same.
select * from employee  join department 
on employee.dept_id=department.dept_id;

-- 3. select dept_id and sum of salary group it by dept_id.
select sum(salary),department.dept_id from employee inner join department
on employee.dept_id=department.dept_id;


-- 4. select dept_name and emp_name apply right outer join and left outer join.

select department.dept_name ,employee.emp_name from employee right join  department
on employee.dept_id=department.dept_id;
select department.dept_name ,employee.emp_name from employee left join  department
on employee.dept_id=department.dept_id;

-- 5. select emp_name with their respective manager names.
select employee.emp_name,employee.manager from employee;  


-- 6. select epm_name with their respective department names.
select employee.emp_name,department.dept_name from employee inner join department 
on employee.dept_id=department.dept_id;


/*
*************union****************
	Emp1			Emp2
emp_no     emp_name	emp_no     emp_name
---------------------   ------------------------
1		A		1		A
2		B		2		B
3		C		4		D
				5		E

1.	select same data from both table.

*/
create table emp1(emp_no int,emp_name char(10));
create table emp2(emp_no int,emp_name char(10));
insert into emp1 values(1,'A'),(2,'B'),(3,'C');
insert into emp1 values(1,'A'),(2,'B'),(4,'D'),(5,'E');
select * from emp1 union select * from emp2;

/*
************subQuery*************
2. select employee belonging to same dept as 'jack'.
3. select name of employee havin lowest salary.
4. update salary =15000 of employees belonging to same dept as 'Max'.
*/
select * from employee;
select * from department;
-- 1. select employee having  same salary as 'Arun'.
select emp_name from employee where salary=(select salary from employee where emp_name='arun');

-- 2. select employee belonging to same dept as 'jack'.
select emp_name from employee where dept_id=(select dept_id from employee where emp_name='max');

-- 3. select name of employee havin lowest salary.
select emp_name from employee where salary = (select min(salary) from employee);

-- 4. update salary =15000 of employees belonging to same dept as 'Max'.
update employee set salary=15000 where dept_id=(select dept_id from department where dept_id=2);