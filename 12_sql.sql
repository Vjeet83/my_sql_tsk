-- helo guys les start it 
use sakila;
desc film;
select film.film_ id,title from film;
select title , inventory , film_id , inventory.last_update 

SELECT title,count(rental_id) as totalcount FROM film INNER join inventory USING (film_id)
INNER JOIN rental using (inventory)
group by  title  having totalcount>15
order by totalcount desc limit 3;

desc inventory;
select film_id ,inventory , ;

select * from category;

select cust.email,film_category.category_id
from customer as cust
inner join rental using (customer_id)
inner join inventory as inv using (inventory_id)
inner join film_category  using (film_id)
inner join category using(category_id)
group by email;

-- use of self join  
create table employee(eid int ,ename varchar(20) , email varchar(20),manager_id int);
insert into employee values (1, "vjeet" ,'vjeet@gmail.com' , 4);
insert into employee values (2, "ansh" ,'ansh@gmail.com' , 3);
insert into employee values (3, "deepu" ,'deepu@gmail.com' , null);
insert into employee values (4, "yuvi" ,'yuvi@gmail.com' , 3);
 
 
 
 -- nested quary 
 --  single result nested/ sub quary 
 
 

select emp.eid,emp.ename,emp.manager_id, manager.eid,manager.ename
 from employee as emp ,employee as manager 
 where emp.manager_id=manager.eid;



