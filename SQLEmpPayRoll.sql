create database payroll_service

select * from sys.databases

use payroll_service

select DB_Name();

create table employee_payroll1
(
id int identity(1,1) primary key,
name varchar (100) not null,
salary money not null,
start date not null
)

insert into employee_payroll1 values
('Billi',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-19'),
('Charlie',300000.0,'2021-05-21'),
('Alex',3500000.0,'2015-04-24');

select * from employee_payroll1

select salary from employee_payroll1 select salary from employee_payroll1 WHERE start BETWEEN CAST('2019-01-03' AS DATE) and GETDATE()

alter table employee_payroll1 add gender char(1)
update employee_payroll1 set gender = 'M' where name='Billi' or name = 'Charlie' or name='Alex'
update employee_payroll1 set gender = 'F' where name ='Terisa'

select sum (salary) from employee_payroll1 where gender='M' group by gender
select avg (salary) from employee_payroll1 where gender='M' group by gender
select min (salary) from employee_payroll1 where gender='M' group by gender 
select max (salary) from employee_payroll1 where gender='M' group by gender 
select count (salary) from employee_payroll1 where gender ='M' group by gender

alter table employee_payroll1 add
PhoneNo int,
Address varchar(250) not null,
Department varchar(50) not null default 'CS'
select * from employee_payroll1

sp_rename 'employee_payroll1.salary','Basic_Pay';

alter table employee_payroll1 add
Deduction float,
Taxable_Pay money,
Income_Tax real,
Net_Pay money
select * from employee_payroll1

update employee_payroll1 set department='Sales' where name='Terisa'
select * from employee_payroll1
insert into employee_payroll1(name,Basic_Pay,start,gender,PhoneNo,Address,Department,Deduction,Taxable_Pay,Income_Tax,Net_Pay) values
('Terisa',200000.00,'2019-11-19','F','862798359','29,Avenue City','Marketing',150000.0,100000.0,5000.0,250000.0);
select * from employee_payroll1

update employee_payroll1 set PhoneNo='684935689',Address='Nims Tower,26',Deduction=52000.0,Taxable_Pay=4935.0,Income_Tax=56789.0,Net_Pay=640000.0 where name = 'Billi'
update employee_payroll1 set PhoneNo='589357986',Address='Marvels Junction',Deduction=46000.0,Taxable_Pay=2000.0,Income_Tax=906789.0,Net_Pay=8900000.0 where name = 'Charlie'
update employee_payroll1 set PhoneNo='359789356',Address='Higher View 25',Deduction=20000.0,Taxable_Pay=9935.0,Income_Tax=19789.0,Net_Pay=700000.0 where name = 'Alex'
update employee_payroll1 set PhoneNo='958349786',Address='West Coast Bank',Deduction=15000.0,Taxable_Pay=3735.0,Income_Tax=18689.0,Net_Pay=490000.0 where Department='Marketing'
update employee_payroll1 set PhoneNo='159753486',Address='Long Island',Deduction=79000.0,Taxable_Pay=76895.0,Income_Tax=49689.0,Net_Pay=586000.0 where name = 'Billi'
select * from employee_payroll1

create table company
(
  comapny_id int identity (1,1) primary key,
  name varchar(100) not null
);
select * from company
insert into company values 
('Tesla'),
('Microsoft');
create table department
(
department_id int identity(1,1) primary key,
Name varchar (100)
);
select * from department
insert into department values
('Sales'),
('Marketing');
create table employee
(
 id int identity(1,1) primary key,
 Name varchar(100) not null,
 Basic_pay float,
 start varchar,
 gender char,
 PhoneNo int,
 Address varchar not null default 'Mumbai',
 company_id int 
)
