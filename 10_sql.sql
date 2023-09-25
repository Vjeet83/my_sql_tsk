use world;
show tables;
select  count(continent) from country;
select  distinct (continent) from country;

select continent ,count(*) from country
group by continent
having count(*) >50;
-- where cant be use with group by so use having insted of where;


use sakila;
show tables;

desc actor;
drop table abc;

-- use of UNION ,UNION ALL,intersect, EXCEPT and etc

select first_name from actor limit 3;
select first_name from actor_info order by first_name limit 3;

select first_name from actor
union 
select first_name from actor_info;

create table xyz (id int);
insert  into abc values
create table abc 
-- raha gya

select * from xyz;
union all
select 
-- LIMITATION of UNION 
-- jin do data le bich m union laga rahe ho unme se  no of columns barabar lene honge 
-- or sath hi data type bhi same hona chahie 
 
 
 
  





