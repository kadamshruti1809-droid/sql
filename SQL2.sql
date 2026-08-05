create database	Emp;
use Emp;
CREATE TABLE Emp(
EmployeeId INT PRIMARY KEY,
FullName VARCHAR(45) NOT NULL,
Department VARCHAR(45) NOT NULL,
Salary float NOT NULL,
Gender VARCHAR(45) NOT NULL,
Age INT NOT NULL
);
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME
);
INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5
DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15
DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY));
CREATE TABLE Address
(
AddressId INT PRIMARY KEY AUTO_INCREMENT,
EmployeeId INT,
Country VARCHAR(50),
State VARCHAR(50),
City VARCHAR(50)
);
INSERT INTO Address (EmployeeId, Country, State, City) Values (1001, 'India', 'Odisha', 'BBSR');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1002, 'India', 'Maharashtra', 'Mumbai');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1003, 'India', 'Maharashtra', 'Pune');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1004, 'India', 'Odisha', 'Cuttack');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1005, 'India', 'Maharashtra', 'Nagpur');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1006, 'India', 'Odisha', 'Cuttack');
select * from Employee;
select * from Projects;
select * from Address;

desc Employee;
alter table emp modify fullname varchar (60) unique;
alter table employee change column department dept varchar(50);
alter table employee rename to emp;
select *from emp;
show tables;
TRUNCATE TABLE projects;
create table simple
(
Id int primary key auto_increment,
remarks varchar(20)
);

insert into simple (remarks) values
("hello"),
("good morning"),
("bye");
desc simple;
select *from simple;
select now();
select date_add("2026-03-23",interval 30 day);



alter table emp add location varchar(20);
desc Projects;
desc Address;
show tables;
alter table Emp add location varchar(50);
update emp set location="thane";
alter table Employee add Serial_no int first;
alter table Employee add Title varchar(5) after EmployeeId;
alter table employee drop location;
alter table Employee drop Serial_no,drop Title;

select *from emp;
alter table emp add Title varchar(50);
update emp set title="Mr" ;
update emp set title="Mrs. " where gender = "female";
update emp set salary=55000 where fullname= "Mary Smith";
delete from emp where employeeId= 1010;
select *from emp order by fullname desc;
select *from emp order by EmployeeId desc;
-- there are four clause in sql--
-- WHERE GROUP BY HAVING ORDER--

-- LIMIT COMMAND --
select * from emp order by fullname limit 3;
SELECT * from emp limit 2,5;
SELECT * from emp limit 5 offset 2;
select *from emp where employeeid % 2 =0;
select * from emp where salary>50000;
select fullname,salary,(salary*0.05) as bonus from emp;
select min(salary) from emp;
select max(salary) from emp;
select avg(salary) from emp;
select sum(salary) from emp;
select *from projects where employeeId is Null;
select* from projects where employeeId is not null;
-- group by--
select *from projects;
#count
select dept,count(dept) from emp group by dept;
select salary,count(salary) from emp group by salary;
select dept,count(salary) from emp group by dept;
select dept,count(*) from emp group by dept;
# sum

select dept,sum(salary) from emp group by dept;
select gender,count(*)from emp group by gender;
# avg
select dept,avg(salary) from emp group by dept;

select truncate (avg(age),0) from emp;

select truncate (123.45676543,-2);
select truncate (123.45676543,0);

select dept ,truncate (avg(age),0) from emp group by dept;
use emp;
select distinct dept from emp;
select	distinct gender from emp;
show tables	; 
use employee;
select distinct dept from emp;
select	distinct gender from emp;
select distinct dept, gender from emp;
select * from employee where age not in (23,28);
select *from employee where age in (23,28);
select* from employee;
select	* from employee	where salary between 40000 and 60000;

-- show me all the records of emplys ,whose age is either 25 or 28
select	* from employee	where age between 25 and 28;
select * from employee where	employeeid in (1004,1007, 1003,1010);
select * from employee where employeeid not in (1006,1005);
select * from employee  where fullname like "p%" ;
select * from employee  where fullname like "%y" ;
select * from employee  where fullname like "%i%" ;
select * from employee  where fullname like "_i%" ;
select * from employee  where fullname like "__u%" ;
select * from employee  where fullname like "%n___" ;
select * from employee  where fullname like "%n__" ;
select * from employee  where fullname not like "%n__" ;
select * from employee  where fullname not like "p%" ;
select *from projects;
select* from projects where employeeid is null;
select* from projects where employeeid is not null;
select department from employee	group by department ;
select department, count(*) from employee	group by department ;

#HAVING CLAUSE
select department, count(*) from employee	group by department HAVING COUNT(*)>3 ;
select department, count(*) from employee	group by department HAVING COUNT(*)=2 ;
select GENDER, count(*) from employee	group by GENDER HAVING COUNT(*)=2 ;
SELECT GENDER ,SUM(SALARY) FROM employee group by GENDER;
SELECT GENDER ,SUM(SALARY) FROM employee GROUP BY GENDER;

select* from address;
select state ,count(*) from address group by state having count(*);
select city ,count(*) from address group by city;
select city ,count(*) from address group by city having count(*)>1;
select * from projects;
select datediff(Enddate,startdate) as duration from projects;
select datediff(Enddate,startdate) as duration ,count(*)from projects group by datediff(Enddate,startdate) having count(*)>=2;
select datediff(Enddate,startdate) as duration ,count(*)from projects group by datediff(Enddate,startdate);
select datediff(Enddate,startdate) as duration ,count(*)from projects
where employeeid>1004
group by datediff(Enddate,startdate) having count(*)>=2;

