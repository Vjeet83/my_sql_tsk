create database test2;
use  test;
create table student(sid int , email char(20));
insert into student values (2,null);
create table student2 (sid int , email char(20)default "hey");
insert into student2 values ();
select * from student2;

insert into student2 (sid , email)  values (4,'vvjj');

-- constrant 
 create table student3 
 (sid int not null default 0 , 
 email char(20) default 'gmail.com');
 
insert into student3 (email) values('user');
insert into student3 (email,email) values(null,'user@');  -- it give error because we give condition(while creat table) that sid should not be null,


create  table student_unique (sid int unique default 0 , email char(20) default 'gmail.com');
-- insert  into student_unique ( 

-- null = no refrence  

insert into student_unique(sid,email)  values (null , 'users@');

insert  into student_unique(email) values ('user@');
insert  into student_unique(email) values ('user@');

select * from student_unique;


create table employees(eid int primary key , ename char(20));
-- we can denote primary key by this mathod also ->
create table employeess(eid int  , ename char(20),primary key(eid));

-- primary key is not null and also unique 

insert into  employees values (1 , "vjss" ); 

insert into employees values ( 1 ,"baba");  -- we give error bcoz eid is primary key so 1 is not accepted again

-- Q)learn about constrain  1 check  2 foreign key 











-- tinyint , smallint , mediumint 
-- tinyint = 1 byte  => 8   2(8) 
-- boolean => tinyint 
-- 0 to 256 
