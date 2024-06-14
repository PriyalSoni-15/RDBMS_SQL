show databases;
create database db3;
use db3;
show tables;
create table student (
	student_id int primary key auto_increment,
    student_name varchar(100) not null,
    student_age int not null
    );
insert into student (student_name , student_age) values ('krishn',20);
select * from student;
insert into student (student_name, student_age) values ('Rekha' ,33) , ('cde' ,44);
update student set student_age=19, student_name='zyx' where student_id=3;
insert into student ( student_name , student_age) value ('buu',24);
delete from student where student_id=4;
insert into student (student_name , student_age) values ('priyal', 24);
show databases;
use import;
show tables;
