select student_id, student_age,
	case
		when student_age<0 then 'Invalid age'
        when student_age<20 then 'Minor cannot drive'
        else 'Adult cand drive'
	end as Driving
from student;
insert into student (student_name, student_age) values ('klm',0);
insert into student (student_name, student_age) values ('mno',-2);
show tables; 
select * from student;
create table table1 (
tb1_id int,
a int
);
create table table2 (
tb2_id int,
a int
);
insert into table1 values (100,1),(200,2);
insert into table2 values (900,1),(800,3);
select * from student;
-- joins
select * from table1 inner join table2 on table1.a = table2.a;
select * from table1 left join table2 on table1.a = table2.a;
select * from table1 right join table2 on table1.a = table2.a;
select * from table1 cross join table2;
select * from table1 left join table2 on table1.a = table2.a
union
select * from table1 right join table2 on table1.a = table2.a;
select a,tb1_id from table1
union all
select a,tb2_id from table2;
-- transaction
start transaction;
insert into student (student_name, student_age) values ('plo',22);
insert into student (student_name, student_age) values ('ert',21);
rollback;
commit;