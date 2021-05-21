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