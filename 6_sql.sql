use sakila;

-- insert => insert into table values
select * from language;
insert into language VALUES (12, 'Russia' , NOW() );

insert ignore into language 
values (13, 'arabic' , now() );

insert ignore into language 
values (14, 'arabic' , now() );

insert ignore into language 
values (15, 'arabic' , now()  , 90);
-- it give error  because we give 4 entries but total columns are only 3

insert ignore into language(language_id ,  name ,last_update)
values  ( 15 , 'arabic' , now() ); 
-- here i also provide columns name  isse sequense badal bhi sakte h clm name dene k bad  fir vo given  clm name k according h insert hoga 



-- multiple value insert 

insert into language (last_update , name)
values(now() , arabic1),
       (now() , arabic2 ),
       (now() , arabic3);   -- error
       
 desc language;      

-- database  => sql => folder 

create database test;
create database if not exists test;


use test;
show tables;
-- still no tables
 
 -- ddl statement create => table ,index ,view
  
create table employee(e_id int ,ename char(20) , email char(20));

insert into employee 
values ( 2,'vjeet' , 'vjeet@gmail');
insert  into employee 
values ( 3,'sonu' , 'vjeet@gmail');


insert into employee(ename)
values('dudeBoy@gml');

desc employee;
select * from employee;

create table employee2(eid int default 0 , ename char(20) , email char(20));

insert into employee2(eid, ename,email)
values(null, 'abc' , 'abc@gml');
 select * from rama;

insert into employee2( ename,email)
values( 'abc' , 'abc@gml');
select * from employee2;


create database  gamma;
use gamma;
create table rama(e_id int default 0, ename  char(30) ,email char(30), entry_tim timestamp  default CURRENT_TIMESTAMP ); 
 insert into rama(e_id , ename )
 values(3 , 'vjeet g');
 insert into rama(e_id , ename , email )
 values ( 4,'anshu' , 'anshu@gmail') , (3 , 'monu' , 'monu$gmail' ) , (1,'deepu' , 'deepak#gmail' );
 show tables ;
 select * from rama;

-- now we learn update and delet  
-- first of all we have to deactivate safe mode of sql because in our table there is not any primary key so without deactivate safe mode our comand of update and delet give error
 
set sql_safe_updates = 0;

UPDATE rama SET e_id = 2 where ename = 'monu' and  email = 'monu$gmail';
delete from rama 
where ename = 'monu' and email = 'monu$gmail' ;
select * from rama;

