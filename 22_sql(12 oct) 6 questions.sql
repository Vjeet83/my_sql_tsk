use sakila;
-- Q1 How many movies a user has worked
--    Actor and film_actor table
--    Number of movies should me more than 3
show tables;
describe actor;
select * from actor;
describe film_actor;
select * from film_actor;

select actor.actor_id ,count(*) from  actor join film_actor using (actor_id) group by actor_id having count(*) >3 ;






-- Q2 Get all the information of user with the maximum and minium salary
--     (id , name, email, salary)
show databases;
use employees;

show tables;
describe employees;
select *  from employees;
select count(*) from employees;
select * from employees;
select emp_no, count(emp_no) from employees group by emp_no;
select * from salaries;
select emp_no ,count(emp_no) ,min(salary) , max(salary) from salaries group by emp_no;


create  view  employees_view as 
select * from employees;

describe employees_view;
select * from employees_view;

create or replace  view  employees_view as
column 1 ,column 2 , column3 , column4 , column5 , new column as email 
from employees;



-- Q3 Calculating the total population where the total population should be more
-- than 1000  and there should be more than 2 city in each code

show databases;
use world;
show tables ;
select * from city;
select * from country;
select * from countrylanguage;

select code ,count(city.name) , sum(country.population) from 
country join city  on ( country.code = city.countrycode) 
group by country.code 
having sum(country.population)>1000 and count(city.name) >2;



-- Q4 Finding all the countrycode where
-- the number of city in each country should be greater than equal to all the
-- city present in each country code  afg  nld , are , bgd ( use country table

select cnt.code  from country as cnt 
join city as ct 
on (cnt.code = ct.countrycode) group by cnt.code 
having count(ct.name) > all  (
	select city_no from  (
		select cnt.code , count(ct.name)  as city_no
		from country as cnt join city as ct on (cnt.code = ct.countrycode)
		where cnt.code in ( 'afg' , 'nld','are' , 'bgd') 
		 group by cnt.code
 ) as  cnt_join_ct ) ;
 
-- Q5 Create a table with  id, name, salary, dept
-- insert all the data for all the column value

-- - Get the id, salary and the salary_percent of every employee where salary_percent should be percentage with employee_id 2;

 
 use marketing;
 show tables;
 describe employees;
 
 select * from employees;
 drop table employees;
 create  table employees (
    id INT,
    name VARCHAR(50),
    salary DECIMAL(10, 2),
    dept VARCHAR(50)
);

INSERT INTO employees (id, name, salary, dept)
VALUES
   (1, 'Ramesh', 55000, 'IT'),
   (2, 'Saraswati', 60000, 'HR'),
   (3, 'Vishal', 58000, 'Finance'),
   (4, 'Meera', 52000, 'IT'),
   (5, 'Ganesha', 62000, 'Finance'),
   (6, 'Lakshmi', 56000, 'HR'),
   (7, 'Arjun', 59000, 'IT'),
   (8, 'Sita', 53000, 'Finance'),
   (9, 'Anita', 59000, 'HR'),
   (10, 'Rahul', 60000, 'IT'),
   (11, 'Kavita', 55000, 'Finance'),
   (12, 'Surya', 61000, 'IT'),
   (13, 'Rajesh', 56000, 'HR'),
   (14, 'Priya', 54000, 'Finance'),
   (15, 'Krishna', 62000, 'IT'),
   (16, 'Shivani', 57000, 'Finance'),
   (17, 'Manish', 58000, 'IT'),
   (18, 'Neha', 59000, 'HR'),
   (19, 'Amita', 56000, 'IT'),
   (20, 'Rajesh', 58000, 'Finance'),
   (21, 'Shalini', 57000, 'IT'),
   (22, 'Harish', 60000, 'HR'),
   (23, 'Neelam', 54000, 'Finance'),
   (24, 'Preeti', 55000, 'IT'),
   (25, 'Rajat', 60000, 'HR'),
   (26, 'Sanjay', 59000, 'Finance'),
   (27, 'Anjali', 57000, 'IT'),
   (28, 'Vikram', 61000, 'HR'),
   (29, 'Neeta', 56000, 'Finance'),
   (30, 'Deepak', 59000, 'IT');
 select *  from employees;
 
select id , salary  ,
concat(round(salary*100/(select salary from employees where id = 2),2) , '%') as percent
from employees;





-- Q6 use salaries table
-- find out the the max, sum, avg salary for each person in every month  from the from_date column
-- that should have the to_date year to be before 1999
 use employees;
 show tables;
 describe salaries;
 select * from salaries;


select emp_no , 
round(min(salary/12),2) , round(max(salary/12),2)  , round(avg(salary/12),2) 
from salaries
where year(to_date) < 1999 group by emp_no ;
select emp_no , salary  ,from_date , to_date, (year(to_date) - year(from_date)) as ttl_year,
 (month(to_date) - month(from_date))
 as ttl_year from salaries ;
 
select emp_no , from_date , to_date ,
  12*(year(to_date) - year(from_date)) as ttl_year ,
  min(round(salary/(  12*(year(to_date) - year(from_date))),2)) as min_monthly_salary 
from salaries
; 
 
 select emp_no , 