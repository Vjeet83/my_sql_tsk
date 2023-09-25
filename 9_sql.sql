-- alias name  = nick name 
 -- expression => acha  name (readablity)

use sakila;
select first_name,
concat("mr ",first_name) as fulname from actor;

-- ise where clause me normaly use nahi kar sakte h
 -- whre (join ,using claus e not run on alias 
 -- but order by can be use with alias
 
 
 
 select first_name , length(first_name)
 from actor;    -- it is example of single raw function

-- Q) read about single raw function and multiple raw function

 -- group by 
-- multiple row => output
-- similar => operation
-- fro[p => group operation

-- froup by operation 
select * from film;

use world ;
 show tables;
select *from country;

desc country;
create table t1(id int , city varchar(20) );
insert into t1 values (1,'hey');
insert into t1 values (2,'hey2');
insert into t1 values (null,'hey3');

select * from t1;
select count(*) from t1;
select count(id) from t1;

select sum(id) from t1;
select  distinct(city) ,id from t1;
-- jaha city or id dono  same ho unhe hi nahi dikhayega  matlb distinct dono par use ho raha handler
-- distinct null ko skip kar deta h 

show tables;
use city;
select  * from city where countrycode ='AFG';

select countrycode from city;
select countrycode , count(id) from city group by countrycode;
-- group by k bad jo attribute ka nanme dia h vahi slelct ka bad dena padega  varna error dega 
select countrycode , count(id) , sum(population) As total_population from city group by countrycode;
select * from city ;

select countrycode, concat("country  " , (select countrycode ), '    has totl population  ' , (select sum(population)  )) as result from city group by countrycode;
-- group by ke sath data filter ke lie where coause use nahi kar sakte  so  where ki jagah  "having "  use karte h

  select countrycode, concat("country  " , (select countrycode ), '    has totl population  ' , (select sum(population)  )) as result from city
  group by countrycode having  sum(population) > 500 and count(id) >1;
  
select  countrycode ,sum(population) from city 
group by countrycode ;

select continent from  country 
group by countrycode;
select continent from country 
where continent ='europe'
group by  continent , region;  
select continent ,region , count(*)  from country group by continent , region;
select continent from country  where continent = 'europe' group by continent, region;

 select  continent , region , 








 