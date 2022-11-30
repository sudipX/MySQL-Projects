-- creating database
create database sudip_database;
use sudip_database;

-- checking which database we are currently on
select database();

-- creating table for Teacher
create table Teacher(
    teacher_id int primary key,
    first_name varchar(255),
    last_name varchar(255)
);
-- inserting values into Teacher table
insert into Teacher(teacher_id, first_name, last_name)
values (1001, "Subit", "Timilsina"),
       (1002, "Sachin", "Shrestha"),
       (1003, "Bishek", "Khadgi"),
       (1004, "Monica", "Regmy"),
       (1005, "Rabin", "Thapa"),
       (1006, "Rukesh", "Ghimire"),
       (1007, "Madan", "Adhikari");

/*
select * from Teacher;
drop table Teacher;
*/

-- creating table Course
create table Course(
    course_id int primary key,
    course_name varchar(255)
);
-- inserting values into Course table
insert into Course(course_id, course_name)
values (54201, "Computer Science & Information Technology"),
       (54202, "Business Administration"),
       (54203, "General Medicine"),
       (54204, "Business Studies"),
       (54205, "Mechanical Engineering"),
       (54206, "Nursing");

/*
select * from Course;
drop table Course;
*/

-- creating table Class
create table Class(
    class_id int primary key,
    class_name varchar(255),
    course_id int,
    foreign key (course_id) references Course(course_id),
    teacher_id int,
    foreign key (teacher_id) references Teacher(teacher_id)
);
-- inserting values into Class table
insert into Class(class_id, class_name, course_id, teacher_id)
values (201, "Database Management System", 54201, 1001),
       (202, "Operating System & Computer Networking", 54201, 1006),
       (203, "Macro Economics", 54202, 1002),
       (204, "Commercial Banking Operations", 54202, 1005),
       (205, "Investment Analysis", 54204, 1003),
       (206, "Socilogy", 54204, 1004),
       (207, "Pharmacy & Pharmacology", 54203, 1006),
       (208, "Medicine & Surgery", 54203, 1001),
       (209, "Machine Elements Analysis & Design", 54205, 1005),
       (210, "Engineering Physics", 54205, 1002),
       (211, "Maternal Child Nursing Care",54206, 1004),
       (212, "Basic Geriatric Nursing", 54206, 1003);

/*
select * from Class;
drop table Class;
*/

-- creating table Student
create table Student(
    student_id int primary key,
    full_name varchar(255),
    age int,
    class_id int,
    foreign key (class_id) references Class(class_id)
);
-- inserting values into Student table
insert into Student(student_id, full_name, age, class_id)
values (2211188, "Sudeep", 22, 201),
       (2211111, "Srijan", 20, 202),
       (2211113, "Ashutosh", 20, 201),
       (2211102, "Rajesh", 22, 201),
       (2211159, "Bishwas", 21, 205),
       (2211137, "Anish", 20, 205),
       (2211145, "Aaayusha", 18, 211),
       (2211147, "Sushmita", 20, 211),
       (2211149, "Bishal", 20, 206),
       (2211151, "Subash", 24, 210),
       (2211153, "Nisha", 21, 211),
       (2211155, "Gaurav", 22, 201),
       (2211157, "Samang", 25, 211),
       (2211179, "Sudip", 22, 201),
       (2211161, "Sakar", 27, 205),
       (2211163, "Kiran", 29, 205);

/*
select * from Student;
drop table Student;
*/

-- finding total number of students studying in each class
select count(Student.student_id) as "Total Students In Class", Class.class_id, Class.class_name
from Student
inner join Class
on Student.class_id = Class.class_id
group by Class.class_name;

-- finding name of the course, students taking the course and their classes
select Student.full_name, Class.class_name, Course.course_name
from Student
inner join Class
on Student.class_id = Class.class_id
inner join Course
on Class.course_id = Course.course_id;

-- finding name of student with oldest age and his/her age
Select Student.full_name as "Student name with oldest age", Student.age
from Student
order by age desc
limit 1;

-- finding name of student starting with S and containing exactly 5 alphabets
select student_id, full_name
from Student
where full_name like "S____"
order by age asc ;

