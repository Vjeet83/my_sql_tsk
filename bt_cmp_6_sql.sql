 use sakila;
 
 show tables;
 
 select rental_rate from film
 where film_id = 1 ;
 select * from film
 where rental_rate> 0.99;
 
 -- lngth 86 repl cost 20 .99
 
 show tables;
 select * from film;
 select * from film where length(title) = 86 and rental_rate = 20.99;
 
 -- get rantal id ,rentl date , custo id  ,retu date , for user  
 -- whwere return date > rantal date  for rantal id 30
 
 select * from film;
 select * from rental;
 
 select rental_id , rental_date , customer_id 
 from rental 
 where return_date>(select rental_date from rental where rental_id = 30) ;
 
--  rental date  those cust  wh  
-- get imail id  of cust wh  has rentad a movie 

show tables;
select * from customer;
select email from customer join rental using (customer_id) ;


-- get email ,date    rental date  
 -- wh  email = maryy.smith
 
 select * from 
 -- rental 
 -- movie title which rentad
 
 select title from film join inventry using(film_id ) join ;
 
 select title from film join inventory using (film_id) join rental using (inventory_id)
where rental_id = (select max(rental_id) from customer where email = "MARY.SMITH@sakilacustomer.org" );



 use world;
 
  -- continnt  wh   num of country in continent > num of cuntry in continen on north amarica 
  show tables;
 
 select * from country ;
 select count(*) from country where continent =("North America");
 
 select continent ,count(*) from country group by continent
 having count(*) >( select count(*) from country where continent =("North America"));
 
 
 #  in and any 

 create table a(id int) ;
 select * from a ;
 insert into a values (null) , (10) , (10),(20),(30),(40),(50);
 create table b(id int);
 select * from b;
 insert into b values     ;
 
 -- = any   => in 
--   >any   =>  greater then  the minimum value in result set (rhs)
--    < any =>  less then tha maximum value in result set

# ALL  
--   >all   =>  greater then  the maximum value in result set (rhs)
--    < all =>  less then tha minimum value in result set

  


 
 







