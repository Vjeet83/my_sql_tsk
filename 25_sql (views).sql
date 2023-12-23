-- view = access data 
-- it is not a copy 

create table employee123(id int , name varchar(20),salary int) ;

insert into employee123 values (10,"abc" ,100) ,(20, "def",200) , (30,"ghi",300);
select  * from employee123;

select id,name from employee123;

create view empView as select id,name from employee123;

select * from empView;

insert into empview values(40,"japan");

select * from employee123;
-- simple view me insert karne se vo data uski table m bhi aa gaya 

-- alter view empview as 
-- select id
create table dept123(id int ,deptname varchar(20));
insert into dept123 values(10,'HR') , (20,'Marketing') , (100,'oops');

create view empjoin as 
select id, name  , deptname from employee123 em join dept123  dpt using(id);

insert into 