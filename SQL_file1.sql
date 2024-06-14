show databases;
create database db1;
drop database db1;
create database db2;
use db2;
show tables;
create table tb1 (first_name varchar(244), age int);
show tables;
show create table tb1;
desc table tb1;
alter table tb1 add last_name varchar(244);
alter table tb1 drop column last_name;
alter table tb1 modify column first_name varchar(10);
drop table tb1;
create table  tb2(
		ph_no int not null,
        email varchar(100) unique,
        id int primary key,
        age int,
        check (age >= 18),
        city varchar(100) default 'Mumbai'
);





