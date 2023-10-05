show databases;
use employees;
select * from employees;

select hire_date from employees where emp_no=1000;
select * from employees where hire_date>'1986-08-28';


select * from employees where (select hire_date from employees where emp_no=1003);

-- nested sub quary
select * from employees 
where hire_date > (select hire_date from employees where emp_no=10003);
select emp_no from employees  where first_name= 'georgi';
select * from employees where title = (select title from employees where emp_no = 10003);

-- if your subquary return 

select salary
 from salaries where emp_no =10002;
 select * from salaries where salaries = any (select salary from salaries where emp_no =10002);
 
 -- < any 
 -- result set me se sabse badi value  ko le kar use choti sabhi values ko return karega
 select * from salaries;
 select salary from salaries where salary > all ('60117' , '71046');
 
 
 
 
 
 
 -- copy, 21 sept, sir  
 use employees;
show tables;
select * from employees;

-- e,[ 10003   => hiring_date  1986-08-28
select hire_date from employees where emp_no=10003;  
select * from employees where hire_date>"1986-08-28";
select * from employees where first_name="Georgi" and birth_date="1953-09-02" ;
select * from employees 
where hire_date> ( select hire_date from employees where emp_no=10003);

-- nested queries
SELECT emp_no, first_name, last_name, hire_date
FROM employees JOIN titles USING (emp_no)
WHERE title = 'Assistant Engineer'
AND hire_date < ANY (SELECT hire_date FROM
employees JOIN titles USING (emp_no)
WHERE title = 'Manager');

show tables;
select * from titles;
-- title == emp_Np 10001
select title from titles where emp_no in (10001,10002);

-- subquery return 1 row => = , >, <, >=,<= 
select * from titles 
where title =(select title from titles where emp_no in (10001,10002)); --  it give eror
 -- correct answer is
select * from titles 
where title =ANY  (select title from titles where emp_no in (10001,10002));
 -- we can use in ,any , etc  terms according to condition
select * from salaries 
where salary <=ANY ( select salary from salaries where emp_no=10002)
order by salary desc;
 








