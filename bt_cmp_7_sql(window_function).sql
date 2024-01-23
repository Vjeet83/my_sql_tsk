 # Window function 
 
 -- ye bhi group by ki trh multy row finction hote h 
 -- multy row = kai row pr fun ho kar ik row return
 
 show databases;
 use sakila;
 use bootcamp;
 drop table employees;
create table employees(id int primary key auto_increment,
dept varchar(20), salary int);

insert into employees(dept, salary) values("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400),
("dsa",150),("dsa",120),
("dsa",40),("dsa",90),("dsa",500);
 
 select * from employees;
 
 select avg(salary) from employees;
 
 select dept, salary ,
 avg(salary) over () as svg_salry 
 from employees;
 
 -- partiton by 
 select avg(salary) from employees where dept='marketing';
 
 select id,dept , salary , min(salary) over() , 
 avg(salary) over() , 
 avg(salary) over(partition by dept)
 from employees;
 
 -- ordering the data
 select id , dept ,salary,
 avg(salary) over(partition by dept),
 avg(salary) over(partition by dept order by salary)
 from employees;
 
 select id , dept ,salary,
 sum(salary) over(partition by dept)  sum_salr,
 sum(salary) over(partition by dept order by salary)  dept_sum
 from employees;
 
 -- Rank --
 -- isme same rank ki vali value skip ho jati h
 -- par dense rank me same rank vali value age pass ho jati h	
 
 select id,dept,salary,
 rank() over(order by salary desc)
 from employees;
 
 select id,dept,salary,
 rank() over(partition by dept order by salary desc)
 from employees;
 
select id , dept ,salary ,
rank() over (partition by dept order by salary desc),
dense_rank() over(partition by dept order by salary desc)
from employees;


--  row_Number 
select id , dept ,salary ,
dense_rank() over(partition by dept order by salary desc)  abcd,
row_number() over(partition by dept order by salary) use_row_numbr
from employees;


-- ntile

select id,dept ,salary , 
ntile(4) over(order by salary)
from employees;

select id,dept ,salary , 
ntile(4) over(partition by dept order  by salary) as use_ntile
from employees;


-- First value
select id,dept,salary,
first_value(id) over(partition by dept order by salary desc) as first_VAL
from employees;

-- Lag and Lead
select id ,dept ,salary,
lag(salary) over(partition by dept order by salary desc) lag_val
from employees;

select id ,dept ,salary,
lead(salary) over(partition by dept order by salary desc) lag_val
from employees;

