-- --

use sakila;
use world;
show tables;


select distinct release_year
 from film;

select * from ;
drop table caption;

select * from country;
select count(code) from country;
select count(*) from country;
select count(indepyear) from country;

select sum(population) from country;

-- group by --

select continent from country group by continent;
select continent ,sum(population) from country group by continent;
-- niche vale code me group by valicolum nahi di select ke bad fir bhi error nahi dega
select sum(population) from country group by continent;   

select continent ,sum(population),avg(gnp) from country 
group by continent 
having sum(population) >480000000 ;
-- yaha total ik alias  h 
select continent ,sum(population) total,avg(gnp) from country 
group by continent 
having total >480000000 ;
 
 select continent ,sum(population) total,avg(gnp) from country 
group by continent 
having total >480000000 
order by continent ;

select population from country order by population ;

select continent ,sum(population) total,avg(gnp) from country 
group by continent 
having total >480000000 
order by continent ,total desc;

select continent ,region ,sum(population) total,avg(gnp) from country 
where region= 'Caribbean'
group by continent ;

-- read about
-- data types , normalization (1NF,2NF,3NF, BCNF),  oldp vs olab; 
