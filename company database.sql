## create database 
create database company;
use company;
## create employee table
create table employee(
empid int not null primary key auto_increment,
first_name varchar(25),
last_name varchar(25),
salary int(14),joining_date datetime,
department_name varchar(55)
);
desc employee;
## create bonus table 
create table bonus(
bonus_amt int,
bonus_date datetime,
bonus_amount int,
empid int,
foreign key(empid) references employee(empid) ON DELETE CASCADE
);
## on delete cascade used to if you delete primary table record its automatically deleted on foreign table also.
## auto_increment key word is used automatically increments the insert  values in particular column and row.
desc bonus;
## create employee designation
create table designation(
empid int,
designation varchar(55),
designation_date datetime,
foreign key(empid)references employee(empid)
on delete cascade
);
desc designation;
insert into employee values(
0001,'mohan','kumar',10000,'22-02-14 09.00.00','servicenow'),
(0002,'ram','kumar',10000,'22-02-14 09.00.00','ifs'),
(0003,'sam','victor',10000,'22-02-14 09.00.00','servicenow'),
(0004,'harish','chandran',10000,'22-02-14 09.00.00','servicenow'),
(0005,'yuvan','varshit',10000,'22-02-14 09.00.00','servicenow'),
(0006,'satish','kumr',10000,'22-02-14 09.00.00','servicenow');
select * from employee;
insert into employee values(0007,'maha','lakshmi',10000,'22-02-14 09.00.00','ifs');
desc bonus;
## drop duplicate column in bonus
alter table bonus  drop column bonus_amt;
desc bonus;
insert into bonus values('23-01-17 12.00.00',10000,0001);
select * from bonus;
insert into bonus values('23-01-17 12.00.00',10000,0003);
select employee.empid,bonus.bonus_amount from employee right join bonus on employee.empid=bonus.empid;
desc designation;
insert into designation values(0005,'enginner','23-01-17 09.00.00');
select * from designation;
select * from employee;
## write query employee first_name details starting with M

select * from employee where first_name like 'm%';


## write query print salary between 1000 to 10000;

select * from employee where salary between 1000 and 10000;

## wrire query print mohan depart_name

select department_name,first_name from employee where first_name="mohan";

## write a query used join columns firstname and lastname

select concat(first_name,' ',last_name) from employee where empid in(select * from employee where salary between 1000 and 10000);

select employee.first_name,bonus.bonus_amount from employee inner join bonus on employee.empid=bonus.empid;

desc employee;

use e_commerce;

use company;

create index employeedetails on employee(empid,first_name,last_name,salary,department_name);

CREATE procedure GETEMPLOYEEDETAILS()
SELECT * FROM EMPLOYEE;

CALL GETEMPLOYEEDETAILS();

DESC BONUS;

CREATE procedure SALARY()
SELECT SALARY FROM EMPLOYEE;

CALL SALARY();

DROP PROCEDURE SALARY;

CREATE PROCEDURE SALARY()
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME),SALARY FROM EMPLOYEE;

CALL SALARY();

select * from employee;

## remove duplicate records

select distinct  * into employee from employees;

insert into employee(first_name)values('mohan');

select distinct first_name from employee;

select * into employee1 from employee;








