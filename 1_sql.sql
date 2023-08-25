show databases;
use sakila;
show tables;
-- select statement 
describe actor;
desc actor;
SELECT * from actor;
SELECT  actor_id ,first_name from actor;
-- projection & selection
select actor_id , actor_id*10 from actor;
-- is trah k comands original data m koi change nhi karege 
select *from actor_info;

 -- where clause
 select* from actor_info where actor_id=2;
 SELECT actor_id, first_name 
   from actor_info where actor_id>2;
select first_name 
from actor_info where actor_id>2;
select * 
from actor_info 
where first_name = 'ED' ;
 
