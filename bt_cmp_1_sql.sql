-- database :collection of similar objects-- department , customer , orders 
-- tables  : structure coutainer
-- mysql : it is rdbms system
 -- RDBMS : sql ka use karte h 
 -- DDL :
 -- DCL: permission ,previlige
 -- TCL: 
 -- projection and selection;

show databases;
create database bootcamp;
use sakila;

select * from actor;
-- projection = data show karna :-
select actor_id,first_name,actor_id+10 "newactor"
from actor;

-- clause:
-- where clause:
select actor_id,first_name,actor_id+10 "newactor"
from actor where actor_id >5;

select actor_id,first_name,actor_id+10 "newactor"
from actor where first_name='B';

select actor_id,first_name,actor_id+10 "newactor"
from actor where first_name>'B';
-- yaha ascii value ke acording output ho rha h 

-- between

select actor_id,first_name,actor_id+10 "newactor"
from actor where actor_id between 3 and 7;

select actor_id,first_name,actor_id+10 "newactor"
from actor where actor_id  not between 3 and 7;

select actor_id,first_name,actor_id+10 "newactor"
from actor where actor_id in (3,7);
-- yaha actor_id 3 and 7 ke lie hi show karega

-- like 
select actor_id,first_name,actor_id+10 "newactor"
from actor where first_name = "A%";

select actor_id,first_name,actor_id+10 "newactor"
from actor where first_name like "AD%";

-- yaha like me case sensetive nahi h 
-- pr oracle me fark padrta h

select count(*) from actor;

-- logical oprators --
-- and , or  ,...
select  * from actor where actor_id in (34,159) and first_name like '%au%';

select * from actor where actor_id in (167,34 ) and first_name = 'laurence';

-- read about presedency (which wil be prefer at first to solve in quary)

-- addras    add clm last past way  and city id >115 
-- phone number  more then 5 ctr

show tables;

select *  from address where address like '%parkway' and city_id >115  and phone like '_____%';
-- you can use length function in phone number




