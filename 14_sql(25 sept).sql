use employees;
show tables;
select emp_no, year(from_date) as fd from titles
where title='Manager'
and(emp_no, year(from_date) ) in 
(select emp_no ,year(from_date) from titles
where title <> 'manager');

-- corelated quary

-- exists keyword
show tables;
select * from dept_emp;
select count(*) from departments
where exists (select * from  dept_emp where emp_no = 100);
-- isne 0 dia qki inner quarry koi return nhi de rahi



use sakila;
show tables;
select  * from customer where first_name= 'john';

select inventory.film_id ,count(*) from inventory,film
where inventory.film_id = film.film_id
group by film_id;


select  count(*) from inventory ,film 
 where inventory.film_id = film.film_id
 group by inventory.film_id having count(*) >8;
 
 
 use employees;
 
 select emp_no , year(birth_date) from employees;
 
 select birthy from 
 (select emp_no, year(birth_date ) as birthy from employees) as xyz;
 
 -- nasted quary in from clause
 select  emp_no , monthly_salary from 
 (select emp_no, salary/12 as monthly_salary from salaries) as ms 
 limit 5;
 
 
 use sakila;
 
 select amount , film_id from payment join rental using (rental_id )
 join inventory using (inventory_id) 
 join film using (film_id);
 
 show tables;
 
 select sum(amount),film_id  
 from payment join rantal using (renatal_id ) 
 join inventory using (inventory_id )join film using (film_id)
 group by film_;
 
 
 
  -- use of case statement
 select payment_id , rental_id ,amount from payment;
 select 
	case 
    when rental_id =76 then rental_id+134
    when rental_id >=1000 then rental_id+ 12345
    else rental_id
    end 'new'
from;

-- Q) get  emp_no  firsst name and full name of every person  where birth year is > birth  year pf emp no 1003 
--    and the hire year  is <  hire year of emp_no 1005 
use employees;
show tables;
select emp_no, first_name,concat(first_name," " ,last_name) as full_name
 from employees where 
 year(birth_date) > (select year(birth_date) from employees where emp_no=10003)
 and year(hire_date) < (select year(hire_date) from employees where emp_no = 10005);
 
 
--  Q)  get the info of those users  where the heir year is > among all  the heir year  of emp_no 1003 to 1007 , 
select * from employees where year(hire_date) > any (select year(hire_date) from employees where emp_no between 10003 and 10007);


-- select distinct year(hire_date) from employees where year(hire_date)  > any (1986 , 1996);
-- it is not working check about the further way to wrote this uary with any keyword


-- Q) find  the emp_no ,department_no and dept_name of those users
-- who has work into my company for more then  28 years;
  show tables;
  select * from employees;
    select * from departments;
select * from dept_emp;
describe dept_emp;
  select Timestampdeff(to_date,from_date)  from dept_emp;

select de.emp_no,de.dept_no , dp.dept_name ,(year(de.to_date) - year(de.from_date) ) as duration  from 
employees em join dept_emp de  on(em.emp_no = de.emp_no)
join departments dp on (dp.dept_no= de.dept_no)
where (year(de.to_date) - year(de.from_date)) > 28
order by emp_no;

-- it is also  a mathod to find difference btw two date
 SELECT emp_no, TIMESTAMPDIFF(year, from_date, to_date) AS timestamp_difference FROM dept_emp;




-- Q) fnd the emp_no ,dept_no, name of emp and the next working date of  monday from the join
      
-- Q ) find the emp_no ,emp_name dept-no , dept_name ,year, total_no year total month he has worked for those
show tables;
select * from dept_emp;
select * from departments;
select * from dept_manager;
select * from employees;
 use employees;

select ep.emp_no , concat(ep.first_name, ' ' , ep.last_name)  as full_nam ,
 dp.dept_no , dp.dept_name , timestampdiff(month ,hire_date , now() ) as monthss
from employees as ep join dept_emp as de using(emp_no)
join departments as dp using(dept_no)
where timestampdiff(month ,hire_date , now() ) > 400
order by  ep.emp_no , dp.dept_no ; 

-- Q) deploye a foreign key from one table to another table
create database  marketing;
use marketing;
create table shops (
  shop_no  int  primary key ,
  address   varchar(20) ,
  managr_id  int  unique ,
  ttl_emp    int  
  );
  
  insert into shops values (1, '122  jaipur' ,3 ,12),
							(2 ,'34 jagatpura', 2 ,8),
                            (3 ,'12 honolulu ', 4, 22) ,
                            (4 ,' 110 brunai' , 1 , 34);
                            
create table managers ( 
          manager_id  int  ,
          manger_name varchar(20), 
          contact_no  int ,
          FOREIGN key (manager_id) REFERENCES  shops(managr_id) 
);
          
show tables;
-- drop table managers;
insert into managers values (1, 'goku singh' , 1234567 ),
					(2, 'trump kanwar' , 9876543),
                    (3 , 'JustinTudo dalla' , 01010101),
                    ( 4 , 'abhishek' , 3216547);
  

	



 
 
 
 
 
 