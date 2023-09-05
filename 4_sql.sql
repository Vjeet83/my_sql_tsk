show databases;
use sakila;
show tables;

SELECT * FROM city 
where (city_id =3 or city_id =4 ) 
and country_id= 60 ;
SELECT fid , title from film_list
where fid < 7 and (fid = 4 or fid = 6) ;

SELECT * from film_list;

-- order by clause => sort ascending or descending
 select * from film_list order by category asc;
select * from film_list order by category desc;
-- defalut order by is asc and hyperparameter can be desc

select * from film_list order by 5;
select fid , title ,category from film_list order by price;

select * from address;
desc address;
select * from address order by district;
-- perority to first then acoding to same district then sort by address_id

select district ,address, address_id from address order by district ;
select district ,address , address_id from address 
order by district , address_id desc;
select district ,address ,address_id from address
order by district desc , address_id asc;

select * from address 
limit 3 ;

select * from address limit 3  where   order by city_id;
-- limit and order by can not use together

-- visa versa in, and offset 
select * from address limit 3,2 ;
select * from address limit 5 offset 3;

# tabel => dual dummy table => logic
select 2+2  from dual ;

select now() from dual; -- current time of the system
-- pseduo column => column => specific meaning
-- already avaialbe with your system  