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

---- UC4 ----
select * from employee_payroll;

---- UC5 ----
select name, salary from employee_payroll where name='Bill';

select * from employee_payroll where start_date between cast('2020-01-22' as date) and date(now());

---- UC6 ----
alter table employee_payroll add gender char(1) after name;

update employee_payroll set gender='F' where id=2;

---- UC7 ----
select sum(salary) from employee_payroll where gender='F' group by gender;
select count(name) from employee_payroll where gender='F' group by gender;
select min(salary) from employee_payroll;
select max(salary) from employee_payroll;
select avg(salary) from employee_payroll;

---- UC8 ----
alter table employee_payroll add phone varchar(15) not null after start_date;
alter table employee_payroll add address varchar(100) not null default 'Not Available' after phone;
alter table employee_payroll add department varchar(100) not null after address;