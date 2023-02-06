create database EmployeeInfo;
use EmployeeInfo;

create table EmployeeInfo(EmpID int not null primary key auto_increment,EmpFname varchar(55),EmpLname varchar(55),Project varchar(255),Address varchar(255),DOB date,Gender varchar(8));

select * from employeeinfo;

alter table employeeinfo add column department varchar(55);
insert into EmployeeInfo(Empfname,Emplname,Project,Address,DOB,Gender,department)values('Ananya','Mishra','P2','Delhi(DEL)','1976/1/20','F','Admin

');
insert into EmployeeInfo(Empfname,Emplname,Project,Address,DOB,Gender,department)values('Rohan','Diwan','P3','Mumbai(BOM)','1977/5/20','F','Account

');
insert into EmployeeInfo(Empfname,Emplname,Project,Address,DOB,Gender,department)values('Sonia','Kulkarni','P1','Delhi(DEL)','1976/6/15','F','HR

');
insert into EmployeeInfo(Empfname,Emplname,Project,Address,DOB,Gender,department)values('Ankit','Kapoor','P2','Mumbai','1976/7/10','F','Admin

');

select * from employeeinfo;

create table EmployeePosition_Table(EmpID int not null,EmpPosition varchar(55),DateOfJoining date,Salary decimal);

alter table EmployeePosition_Table add foreign key(empid)references employeeinfo(empid);

insert into EmployeePosition_Table(EmpID,EmpPosition,DateOfJoining,Salary)values
(1,'Manager','2022/1/05',500000),
(2,'Executive','2022/3/19',75000),
(3,'Manager','2022/7/01',90000),
(4,'Lead','2022/9/27',45000),
(5,'Executive','2022/8/24',35000);

select * from employeeposition_table;
##1 -Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName

select upper(Empfname) as EmpName from employeeinfo;

##2-Write a query to fetch the number of employees working in the department ‘HR’.

select count(*) from employeeinfo where department='hr';

##3-Write a query to get the current date.
select current_date();

##4-Write a query to get the current time.

select current_time();

select * from employeeinfo;
##Q4. Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.

select substring(emplname,1,4) from employeeinfo;

##Q6. Write a query to create a new table which consists of data and structure copied from the other table.
create table copyemployeeinfo as select * from employeeinfo;

select * from employeeinfo;

drop table copyemployeeinfo;

## Q7-Write q query to find all the employees whose salary is between 50000 to 100000.

select * from EmployeePosition_table where salary between 50000 and 100000;

##-Q8. Write a query to find the names of employees that begin with ‘S’

select * from employeeinfo where  empfname like'S%';

##-09-Write a query to fetch top N records.

SELECT TOP N * FROM EmployeePosition_table ORDER BY Salary DESC;





