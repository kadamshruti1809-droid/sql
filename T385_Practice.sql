show databases;
create database BankingDB;
use BankingDB;

show tables;

create table Customers
(
Custoners INT,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
Phone varchar(15)
);
use	BankingDB;
drop tables Customers;
create table Customers
(
CustonersID INT,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
Phone varchar(15),
AccountCreationDate DATE
);
show tables;
select * from Customers;
desc Customers;
create table Accounts(
AccountID int,
AccountType VARCHAR(20),
Balance DECIMAL(10,2)
);
desc Accounts;
create table Transactions (
TransactionID INT,
TransactionDate date,
Amount DECIMAL	(10,2),
TransactionType VARCHAR(20)
);
desc Transactions;
create table Branches(
BranchID INT,
BranchDate date,
Amount DECIMAL	(10,2),
BranchType VARCHAR(20)
);
CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);
desc loans;


-- arithmetic operators

select 2+3;
select 2+3 as Addition;

select 12>5;
select 12>13 as result;

select 12>13 and 12>15 as result;

create table voter
(name varchar (10),
age int check (age>=18),
email varchar (20) default "dummy@gmail.com");
select *from voter;
insert into voter values
("sachin",18);
desc voter;

		