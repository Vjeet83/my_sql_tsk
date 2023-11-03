use marketing;

create table employees(id int primary key auto_increment , depat varchar(20) , salary int );
show tables ;
insert into employees(dept,salary) values ('hr', 2000),('marketing', '1800'),('dsa', '3000') , ('dsa' , '2900') , ('asd' , '1290') ,('fgh' , '2540');
insert into employees (dept,salary) values ('hr' , 1800) , ('marketing', 2110), ('dsa' , 2600) , ('asd' , 1500) , ('fgh' , 2111) ,('hr' , 1900);
select avg(salary)  from employees;
drop table employees;
alter  table  employees rename column depat to dept;
select * from employees;
select dept , avg (salary ) from employees group by dept;
-- window fnction
-- perform aggregat on group of rows 
-- use of over ()
select id,dept ,salary  ,avg(salary) over () as avgsalary,
max(salary) over() as maxsalary
from employees;

-- if over() koi windows pass nahi karte to over simply kam karega matlab pure table pr process hoga 

-- over  with  partition --
select id,dept ,salary , avg(salary) over (partition by  dept ) as avgsalary
from employees;

-- over with order--
select id,dept ,salary , avg(salary) over (order by  dept ) as avgsalary
from employees;

-- now we use sum insted of  avg
select id,dept ,salary , sum(salary) over (order by  dept ) as sumsalary
from employees;
-- isme order by se pahle Finance valo ki total salary ka sum dikha raha h 
-- fir hr vale me finance or hr ki  total salary lo add karke  dikha rha h

select id,dept ,salary , sum(salary) over (order by  salary ) as sumsalary
from employees;
-- yaha order by salary krne pr  har salary ki catagory alag hogi agar salary 
-- same na ho to  islie
--  yaha ik tarah se cumulative sum dikha raha h  but cumulative salary or isme 
-- difference ye h ki jab do salary same hogi to ye dono ko ik sath add kar dega 
-- or ik si total salary dikhayega but cumulative me alag alag hi add karega

select id,dept , salary ,
sum(salary ) over (partition by dept) as partitsum 
from employees;
select id,dept ,salary , 
sum(salary) over (order by  salary ) as rollingsum ,
sum(salary) over (partition by dept ) as partitionsum
from employees;
select sum(salary) from employees where dept in ( 'HR','Finance') ;

select id,dept ,salary , 
sum(salary) over (order by salary ) as rollingsum ,
sum(salary) over (partition by dept order by salary ) as rollingsumdept
from employees;

select id,dept,salary, 
sum(salary) over (partition by dept  order by salary ) as  akkam 
from employees;

 select  id, dept , salary ,
 avg(salary) over (partition by dept) as dept_avg,
 avg(salary) over () as company_avg 
 from employees;
 
 select  id, dept , salary ,
 min(salary) over (partition by dept order by salary ) as rolling_dept_salary,
 min(salary) over () as company_avg 
 from employees;
 
 select  id, dept , salary ,
 sum(salary) over (partition by dept order by salary ) as rolling_dept_salary,
 sum(salary) over (partition by dept) as total_dept_salary 
 from employees;
 
 -- Rank --
 
 select  id,dept,salary ,
 rank () over (order by salary) 
 from employees;
 
 insert  into employees (dept,salary) values('marketing' , 4000);
 
 select  id,dept,salary ,
 rank () over (order by salary) 
 from employees;
 
  select  id,dept,salary ,
 rank () over (partition  by salary) 
 from employees;
 
  select  id,dept,salary ,
 rank () over (partition by dept order by salary) 
 from employees;
 
-- Q) learn how to use where clause with these (over fnct.) 

select  id,dept,salary ,
 rank () over (partition by dept order by salary) ,
dense_rank () over (partition by dept order by salary) 
 from employees;
 
 -- window function with shere clause 
 select  id,dept,salary ,
 rank () over (order by salary desc) 
 from employees
 where  dept != 'IT';
 
 
