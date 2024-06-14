create database practice;
use practice;
create table employee (
    emp_id int primary key,
    emp_code int,
    emp_name varchar(30) not null,
    dep_id int not null,
    phone_no varchar(20) not null
);

show tables;
-- show databases;
-- show create table employee;
insert into employee values (1,101,'Mark',1001,'1485796944'),
							(2,102,'joseph',1002,'1485796944'),
                            (3,103,'john',1003,'1485796944'),
                            (4,104,'adam',1004,'1485796944'),
                            (5,105,'Alex',1005,'1485796944');
select count(*) from employee;
call practice.employee_count();
select * from employee where emp_code = 101;
call practice.employee_with_code(101);
set @maxempcode =0;
call practice.get_max_code(@maxempcode);
select @maxempcode;
set @x =2;
call practice.get_dep_code_from_id(@x);
select @x;
call practice.insert_employee(6,106,'McCane','1006','1234567890');
select * from employee;

-- Functions
select add_two_num1(2,5);
create table table_function(
id int,
name varchar(100)
);
show tables;
insert into table_function values (100,'mike'),
									(101,'Ram'),
                                    (102,'sam'),
                                    (103,'hume');
select * from table_function;
call getResultset(100);


use practice;
show tables;
-- Partitioning
create table range_partitioning (
bill_no int not null,
cust_code int not null,
amount int not null
)

partition by range (amount)
(
partition p0 values less than (100),
partition p1 values less than (500),
partition p2 values less than (1000),
partition p3 values less than (1500)
);
show tables;
insert into range_partitioning values (1,101,25),
										(2,102,125),
                                        (3,102,1125),
                                        (4,102,235),
                                        (5,102,35),
                                        (6,102,255);
select * from range_partitioning where amount = 35;
select Partition_Name , Table_Rows from Information_Schema.Partitions where Table_name = 'range_partitioning';


create table list_partitioning(
bill_no int not null,
agent_code int not null,
amount int not null
)
partition by list(agent_code)
(
partition pA values in (1,2,3,4),
partition pB values in (5,6),
partition pC values in (7,8,9)
);
show tables;
insert into list_partitioning values (1,1,100),
										(2,3,100),
                                        (3,5,100),
                                        (4,6,100),
                                        (5,8,100),
                                        (6,9,100);
select * from list_partitioning;
select Partition_Name, Table_Rows from Information_Schema. Partitions where Table_name = 'list_partitioning';

create table hash_partitioning (
id int not null,
dep int not null,
amount int not null
)

partition by hash(id) partitions 3;
show tables;
insert into hash_partitioning values (1,1,100),
										(2,3,100),
                                        (3,5,100),
                                        (4,6,100),
                                        (5,8,100),
                                        (6,9,100);
select * from hash_partitioning;
select Partition_Name, Table_Rows from Information_Schema.Partitions where Table_name = 'hash_partitioning';


create table key_partitioning(
id int primary key,
dept int not null,
amount int not null
)
partition by key() partitions 2;
show tables;
insert into key_partitioning values (1,1,100),
										(2,3,100),
                                        (3,5,100),
                                        (4,6,100),
                                        (5,8,100),
                                        (6,9,100);
select * from key_partitioning;
select Partition_Name, Table_Rows from Information_Schema.Partitions where Table_name = 'Key_partitioning';

create table sub_partition(
id int not null,
dept int not null,
amount int not null
)
partition by range(dept)
subpartition by hash(id)
subpartitions 4
(
partition p0 values less than (4),
partition p1 values less than (10)
);
show tables;
insert into sub_partition values (1,1,100),
										(2,3,100),
                                        (3,5,100),
                                        (4,6,100),
                                        (5,8,100),
                                        (6,9,100);
select * from sub_partition;
select Partition_Name, Table_Rows from Information_Schema.Partitions where Table_name = 'sub_partition';
