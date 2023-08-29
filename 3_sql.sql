--  learn about logica operator (an , or ,nor)
use sakila ;
select * from actor ;
select * from actor where first_name= 'NICK'
and actor_id = 2;

-- use of or 
select * from actor where first_name= 'NICK'
or actor_id = 3;

show tables;
select * from actor_info ;

select *from actor_info 
 WHERE film_info like 'Animation%'
 and first_name = 'GOLDIE' ;
 
select *from actor_info 
 WHERE film_info like 'Animation%'
 and first_name = 'GOLDIE' or first_name = 'NICK' ;
-- if se use 'and'  and 'or' condition at same place then computer solve 'AND' condition  at first  then  solve 'OR' condition 
-- and we get result  accordinng to this .
select *from actor_info
 WHERE film_info like 'Animation%'
 or first_name = 'GOLDIE' and first_name = 'NICK' ;
 
 
 select category , rating ,title 
  from film_list where  category like 'sci-fi' and rating like 'pg';

select category , rating ,title 
  from film_list
  where  category like 'sci-fi' 
  or category like 'family' and rating like 'pg';

-- here also first solve  'and'  and then 'or'
-- to solve the  problem related to this se use '()' .

-- use of paranthisis  ()
select category , rating ,title 
  from film_list
  where  (category like 'sci-fi' or category like 'family') and rating like 'pg';
  
  select 2+2*3;
  select (2+2)*3;
  
  -- use of  'BETWEEN'
  select * from actor 
  where actor_id between 2 and 5;
  -- we can give this camand like this also ->
  select * from actor where actor_id <= 5 and actor_id >=1;

select * from actor where first_name between 'B' and 'E';
 
-- use of 'IN'
select * from actor where actor_id =1 or actor_id = 5;
-- we can use this comand using 'in' 
select * from actor where actor_id in ( 1,5 );

select * from actor  where actor_id in (1,3,5,29);


-- use of " NOT "
select *  from actor where not(actor_id=1); 

-- Q) GET USER  IN WHICH A and E not come together in 
-- Q) get   in which  first name should not be gress  , joy , 
-- Q) 

show databases ;
use sakila;
select * from actor;

-- ans 1
SELECT * From actor WHERE 
(actor_id BETWEEN 2 AND 7) and (first_name = 'nick' or first_name = 'ed');

-- ans 2
select * from actor where last_name not like '%a%' and last_name not like '%e%' ;

-- ans 3 
select * from actor where not first_name in ( 'grace ' , 'matthew' , 'joy')
and actor_id <=15;

-- ans 4 
SELECT * FROM actor where last_name not like '%a%' 
and not  first_name like '%i%' ;

