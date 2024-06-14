use db3;
select * from student;
select student_name, student_age from student;
select student_name, student_age from student where student_age <= 19;
select student_name, student_age from student where student_age <= 22;
select student_name, student_age from student where student_age >= 19;
select student_name , student_age from student where student_name= 'priyal';
select student_name , student_age from student where student_age between 20 and 40;
select student_name , student_age from student where student_age=19 or student_age=24;
select student_name , student_age from student where student_age<20;
select student_name , student_age from student where not student_age<20;
select student_name , student_age from student where not student_age =19 and not student_age = 24;
select student_name , student_age from student where student_age in (19, 24);
select student_name , student_age from student where student_name like 'p%';
select student_name , student_age from student where student_name like 'r%';
select student_name , student_age from student where student_name like '___';
select student_name , student_age from student where student_name like '%x';
select student_name , student_age from student where student_age like '20%';
select * from student limit 2;
select min(student_age) as youngest from student;
select max(student_age) as oldest from student;
select count(*) from student where student_age in (17,19);
select avg(student_age) from student;
select sum(student_age) from student;
show tables;
show create table student;
show databases;


create table dept (
	dep_id int primary key,
    dep_name varchar(10) unique,
    dep_loc varchar(20) not null
);
show tables;
insert into dept values (1,'a','mumbai'),(2,'v','bangalore'),(3,'c','mumbai'),(4,'d','bangalore');
select * from dept;
insert into dept values (5,'e','mumbai');
select count(*) as number , dep_loc from dept group by dep_loc;
select count(*) as number , dep_loc from dept group by dep_loc having dep_loc = 'mumbai';
select * from dept order by dep_name desc;