use sakila;
-- views --
 show tables ;
 select * from actor;
 
 -- vertual view 
 
 -- create a view
 create view  actor_view as 
 select actor_id , first_name from actor;

-- show data of view  or call the view quary
select * from actor_view ;
 drop table test;
 create table test (id int , name varchar(20) );
 
 insert into test values(1,'vjeet');
 insert into test values(2,'tushar sir');
 insert into test values(3,'anuj');

create view testview as 
select name from test;

select * from  testview  where name='vjeet';

-- insert 
insert into testview  values('regex');
select  * from testview;

select * from test;
-- sp we can see that if we change into view table then this change also can be seen in physical data (real table)
-- similarly  if we can change in physical data then it also can s=be seen in view data(table)

 -- name of view tbl( i.e. ->testview) can be seen by this comand 
 show tables ;     -- 
 -- now if we create a view tbl with same name that is already exist then it show an error so  we have to use replace cmd like this ->
 
 create or replace  view testview  as 
 select id , name from test;
 
 -- we can change in view cmd\tbl by alter cmd like this cmd
 alter view testview  as select name from test where id>2;
 
 show tables ;
 select * from testview ;
 
 -- we can drop view  by drop cmd like this
 drop view testview;
 
 -- create a new view 
 create view cityfinder_view as 
 select  country_id, country , city_id, city  from country
 inner join city using (country_id) ; 
 -- select view name as you can know that it is view cmd\tbl by using any symbol or add view in name 
 
 select * from cityfinder_view order by country_id;
 
 -- count comand -- 
 select * from test;
 select  count(name) from test;
 select count(id) from test;
  -- count cmd do not count null values;
select id, ifnull(id,0) from test;  -- agr row me null value hogi to 0 return karega other wise same value return karega jo exist h

select count(ifnull(id,0)) from test; -- ab count cmd null vali row ko b count jar kega
 select count(id) from test;
 
 alter  table test add column  salary int;
 
 insert into test values (4, null , 100);
 insert into test values (null, null , 100);
 insert into test values (100, null , null);

select * from test;

-- coalesce  -- >
select id,name , salary, coalesce(id,name , salary) from test;
-- coalesce  smd return the  first not null value from every row among  given column 

-- Q) create with colm movie_id , movie_name , movie_duration , movie_price 
--   another table  with columns c_id , c_name , m_id , date of watching 
--   1) give all customer id, customer name and movie name  that have seen  by that customer
--   2)  get all the information off customer wheter they have watch movie of not 
--  3) get  the customer  id and total number of movie that have been watch  by customer after year 2000 
--  4)  find out  the total  duration  and total amount  he spent  on watching movie 
--  5) get only the customer id name  of those person who watch maximum number

use marketing;
create table  movies ( m_id  int  , 
                      m_name varchar(20),
                      m_duration Time ,
                      m_price int , 
                      constraint m_id_pk primary key(m_id) );
                      
CREATE TABLE movies (
    m_id INT,
    m_name VARCHAR(255),
    m_duration TIME,
    m_price INT,
    CONSTRAINT m_id_pk PRIMARY KEY (m_id)
);
desc movies;
select * from movies;
INSERT INTO movies (m_id, m_name, m_duration, m_price)
VALUES
    (1, 'wohu', '03:15:23', 120),
    (2, 'yuri', '02:45:34', 240),
    (3, 'paa', '03:00:00', 109),
    (4, 'sizuka', '02:55:00', 250),
    (5, 'jadu', '01:50:54', 140),
    (6, 'matrix', '02:12:00', 199),
    (7, 'inception', '02:28:00', 180),
    (8, 'avatar', '02:42:00', 210),
    (9, 'gladiator', '02:35:00', 175),
    (10, 'forrest gump', '02:22:00', 155);
alter table movies 
select * from movies;
create  table customers ( c_id int  ,
						 c_name varchar(20) ,
                         m_id  int ,
                         watch_date date ,
                         constraint fk foreign key  (m_id) references movies(m_id) );
                         
ALTER TABLE customers
MODIFY m_id INT NULL;



--  drop tables customers ;
-- Insert data into customers table with repeated c_id and c_name values
INSERT INTO customers (c_id, c_name, m_id, watch_date)
VALUES
    (1, 'Ramesh', 1, '2023-01-15'),
    (2, 'Suresh', 2, '2023-02-20'),
    (3, 'Priya', 3, '2023-03-10'),
    (4, 'Rajesh', 4, '2023-04-05'),
    (5, 'Neha', 5, '2023-05-28'),
    (1, 'Ramesh', 6, '2023-06-12'),
    (6, 'Amit', 7, '2023-07-30'),
    (7, 'Pooja', 8, '2023-08-22'),
    (2, 'Suresh', 9, '2023-09-18'),
    (10, 'Kishore', 10, '2023-10-03'),
    (11, 'Meena', 1, '2023-11-14'),
    (12, 'Anil', 2, '2023-12-08'),
    (3, 'Priya', 3, '2023-01-25'),
    (14, 'Sanjay', 4, '2023-02-19'),
    (5, 'Neha', 5, '2023-03-07'),
    (6, 'Amit', 6, '2023-04-14'),
    (17, 'Gopal', 7, '2023-05-30'),
    (18, 'Preeti', 8, '2023-06-18'),
    (19, 'Sachin', 9, '2023-07-15'),
    (2, 'Suresh', 10, '2023-08-26'),
    (21, 'Alok', 1, '2023-09-02'),
    (22, 'Sonam', 2, '2023-10-12'),
    (23, 'Vivek', 3, '2023-11-25'),
    (24, 'Suman', 4, '2023-12-10'),
    (5, 'Neha', 5, '2023-01-20'),
    (26, 'Deepak', 6, '2023-02-28'),
    (27, 'Anita', 7, '2023-03-15'),
    (28, 'Rajat', 8, '2023-04-03'),
    (29, 'Lalita', 9, '2023-05-09'),
    (3, 'Priya', 10, '2023-06-22'),
    (31, 'Kavita', 1, '2023-07-07'),
    (32, 'Nitin', 2, '2023-08-16'),
    (33, 'Smita', 3, '2023-09-23'),
    (34, 'Arun', 4, '2023-10-30'),
    (1, 'Ramesh', 5, '2023-11-05'),
    (37, 'kajal' ,null ,null  ) ,
    (39 , 'ansh' , null ,null);

select * from customers;
 select * from movies ;
 select count(m_id) from customers;
 
 
 
 
 
 
 -- Q)read about  limitation or condition of view 
 
 