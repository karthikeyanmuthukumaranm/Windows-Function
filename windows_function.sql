show databases;
use marks;
create table mark(id int primary key,s_name varchar(25),marks int);
desc mark; 
insert into mark values(1,"hari",50);
insert into mark values(2,"deva",100);
insert into mark values(3,"hari",50);
insert into mark values(4,"deva",100);
select *from mark;

#nomal aggregate function

select name,sum(marks) from mark group by name;

#using window function - > it does not mininmize the row count.

	select id,name,sum(marks) over(partition by name) as total_marks from mark order by id;
