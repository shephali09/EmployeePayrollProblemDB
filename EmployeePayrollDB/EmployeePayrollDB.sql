show databases;
 ---- UC1 ----
create database payroll_service;
use payroll_service;

---- UC2 ----
create table employee_payroll (id int not null auto_increment, name varchar(200) not null, 
salary double not null, start_date date not null, primary key(id));

describe employee_payroll;

---- UC3 ----
insert into employee_payroll(name,salary,start_date) values('Bill',10000.00,'2010-05-02');
insert into employee_payroll(name,salary,start_date) values('Neeta',10000.00,'2010-05-02');
insert into employee_payroll(name,salary,start_date) values('Shephali',2000.00,'2022-01-22');
insert into employee_payroll(name,salary,start_date) values('Akash',3000.00,'2020-11-09');
