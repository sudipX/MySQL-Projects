create database sudeep_database;
use sudeep_database;
select database();
drop database sudeep_database;

create table department(
    department_id int primary key,
    department_name varchar(255)
);

insert into department(department_id, department_name)
values (1001, "Operations Management"),
       (1002, "Human Resources"),
       (1003, "Administration"),
       (1004, "Finance"),
       (1005, "Marketing"),
       (1006, "IT Department");

select * from department;
drop table department;

create table employee(
    employee_id int primary key,
    first_name varchar(255),
    last_name varchar(255),
    department_id int,
    foreign key(department_id) references department(department_id)
);

insert into employee(employee_id, first_name, last_name, department_id)
values (21115, 'Swochchhanda', 'Pandey',1001),
       (21116, 'Sudeep', 'Poudel', 1002),
       (21117, 'Subash', 'Dangol', 1002),
       (21118, 'Nisha', 'Khadka', 1003),
       (21119, 'Gaurav', 'Gurung', 1003),
       (21120, 'Sammang', 'Limbu', 1003),
       (21121, 'Siddhanta', 'Kandel', 1002),
       (21122,'Nirmal', 'Lageju', 1005),
       (21123,'Sadikshya', 'Acharya', 1004),
       (21124,'Sugam', 'Thakuri', 1001),
       (21125,'Sulav', 'Kumal', 1004),
       (21126, 'Anita', 'Lama', 1002);


select * from employee;
drop table employee;

create table dependent(
    dependent_id integer primary key,
    full_name varchar(255),
    age int,
    sex varchar(255),
    employee_id int,
    foreign key (employee_id) references employee(employee_id)
);

insert into dependent(dependent_id, full_name, age, sex, employee_id)
values (3001, 'Sudeep Poudel', 37, 'male', 21116);
insert into dependent(dependent_id, full_name, age, sex, employee_id)
values (3002, 'Siddhanta Kandel', 30, 'female', 21121);
insert into dependent(dependent_id, full_name, age, sex, employee_id)
values (3003, 'Sulav Kumal', 19, 'male', 21125);
insert into dependent(dependent_id, full_name, age, sex, employee_id)
values (3004, 'Sadikshya Acharya', 16, 'female', 21123);
insert into dependent(dependent_id, full_name, age, sex, employee_id)
values (3005, 'Nisha Khadka', 40, 'female', 21118);
insert into dependent(dependent_id, full_name, age, sex, employee_id)
values (3006, 'Subash Dangol', 10, 'male', 21117);

select * from dependent;
drop table dependent;

create table project(
    project_id int primary key,
    project_name varchar(255),
    project_location varchar(255),
    department_id int,
    foreign key (department_id) references department(department_id)
);

insert into project(project_id, project_name, project_location, department_id)
values (4001,'Black Hawk', 'Pakistan', 1006),
       (4002,'Project 11', 'USA', 1002),
       (4003,'Blue Diamond', 'Argentina', 1002),
       (4004,'Hello Nepal', 'Nepal', 1005),
       (4005,'Heat & Energy', 'India', 1001),
       (4006,'Mossad', 'Israel', 1001);

select * from project;
drop table project;

select count(employee.employee_id), department.department_id, department.department_name
from employee
inner join department
on employee.department_id = department.department_id
group by department.department_id;

select employee.first_name, dependent.full_name
from employee
inner join dependent
on employee.employee_id = dependent.employee_id
order by employee.first_name asc;

select concat(employee.first_name, ' ', employee.last_name), department.department_name
from employee
inner join department
on employee.department_id = department.department_id;


select employee_id, first_name
from employee
where employee.first_name like "A____";


