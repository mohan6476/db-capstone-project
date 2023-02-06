## Create New Datbase
create database Employee;
## select Database
use employee;

DROP TABLE IF EXISTS Departments CASCADE;
DROP TABLE IF EXISTS Department_Employees CASCADE;
DROP TABLE IF EXISTS Department_Manager CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;

CREATE TABLE Titles (
title_id varchar(5) NOT NULL,
title VARCHAR(100) NOT NULL,
PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
emp_no int NOT NULL,
emp_title_id varchar(5) NOT NULL,
birth_date date NOT NULL,
first_name varchar(30) NOT NULL,
last_name varchar(30) NOT NULL,
sex varchar(1) NOT NULL,
hire_date date NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Departments (
dept_no varchar(100) NOT NULL,
dept_name varchar(100) NOT NULL,
PRIMARY KEY (dept_no)
);

CREATE TABLE Department_Employees (
emp_no int NOT NULL,
dept_no varchar(100) NOT NULL,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Department_Manager (
dept_no varchar(100) NOT NULL,
emp_no int NOT NULL,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Salaries (
emp_no int NOT NULL,
salary int NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

insert into employees(emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date)values
(473302,'s0001','1960/07/21','Hideyuki','Zallocco','M','1990/04/25');


insert into titles values(
's0001','Staff'),('s0002','Senior Staff'),
('e0001','Assistant Engineer'),
('e0002','Engineer'),
('e0003','Senior Engineer'),
('e0004','Technique Leader'),
('m0001','Manager');

select * from titles;

select * from employees;


insert into departments values(
'd001'	,'Marketing'),
('d002','Finance'),
('d003','Human Resources');

insert into departments values(
'd004'	,'Production'),
('d005','Development'),
('d006','Quality Management'),
('d007','Sales'),
('d008','Research'),
('d009','Customer Service');

select * from departments;

insert into employees(emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date)values
(476443,'s0001','1960/07/21','farjana','shik','F','1990/05/25'),
(475053,'e0002','1970/07/21','mohan','kumar','M','1990/03/25'),
(57444,'e0002','1965/07/21','harish','chandran','M','1990/04/25'),
(421786,'s0001','1966/07/21','sam','victor','M','1990/04/25'),
(282238,'e0003','1969/07/21','maha','lakshmi','F','1990/01/25'),
(263976,'e0003','1970/07/21','yuvan','varshith','M','1990/09/25'),
(273487,'s0001','1962/07/21','pavan','naidu','M','1990/12/25'),
(461591,'s0001','1963/07/21','vamsi','krishna','M','1990/09/21'),
(477657,'s0002','1962/07/21','anil','kumar','M','1990/04/15'),
(219881,'e0002','1963/07/21','naveen','kumar','M','1990/04/18'),
(29920,'e0002','1964/07/21','naresh','kumar','M','1990/04/29');

select * from employees;

insert into salaries(emp_no,salary)values(
29920,35000),
(57444,27000),
(219881,10000),
(263976,15000),
(273487,40000),
(282238,17000),
(421786,500000),
(461591,60000),
(473302,5000),
(475053,3500),
(476443,100000),
(477657,200000);

select * from salaries;

insert into department_manager(dept_no,emp_no)values
('d0001', 475053);

create view employeeview as select * from employeesemployeeviewemp_no;

desc employees;

## show all tables in database

show tables;

select * from employees;

## update the values in tables
## 1
update employees set first_name='siri',last_name='naidu',sex='F' where emp_no=29920;

select * from employees;

## 2

update employees set last_name='naidu' where emp_no=219881;

select * from employees;

##3

update employees set first_name='mounika',last_name='naidu' where emp_no=219881;

select * from employees;

##4

update employees set sex='F' where emp_no=219881;

select * from employees;

## 5

update employees set first_name='siva',last_name='kumar' where emp_no=273487;

select * from employees;

## write the query count how many record in table
select count(*) from employees;

select * from employees;

## 6

update employees set hire_date='1990-04-28' where emp_no=29920;

select * from employees;

##7

select * from salaries;

update salaries set salary=35650 where emp_no=29920;

##8

select * from salaries;

##9

select * from departments;

update departments set dept_name='HR' where dept_no='d003';

##10

select * from departments;

update departments set dept_name='Testing' where dept_no='d006';

select * from employees,departments;

select 
employees.emp_no,
employees.first_name,
employees.last_name,
salaries.salary from employees 
right join
salaries  on
employees.emp_no=salaries.emp_no order by first_name;


select * from employees,departments;

select * from employees;

alter table departments add column emp_no int not null;

desc departments;

alter table departments add foreign key(emp_no)references employees(emp_no);

select * from departments;


select * from titles;

select employees.emp_no,titles.title_id,titles.title,employees.first_name,employees.last_name from employees inner join titles on employees.emp_title_id=titles.title_id;
select * from employees;

select first_name from employees group by first_name having count(*);

select * from salaries;

drop salary from salaries where emp_no=474053;

delete from salaries  where salary<5000;

select employees.emp_no,employees.first_name,
salaries.salary from employees 
right join salaries 
on employees.emp_no=salaries.emp_no 








