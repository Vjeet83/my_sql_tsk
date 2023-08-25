use sakila;
select database();
show tables;
show columns from actor;
select * from actor;
select * from sakila.actor;
SELECT * from language WHERE name='English';
select * from language WHERE language_id =3;
select * from language WHERE name >'i';
select * from language WHERE name > 'iu';
select * from actor;
select first_name from actor WHERE first_name>'b';
select first_name from actor WHERE first_name>'bitt';
select first_name from actor WHERE first_name>'BITT';
-- Matalb yaha capital or small ka jyada fark nhi pad raha --
-- now learn about how to check fro a perticular woed (dinosaurs)
SELECT * from Film ;
SELECT * from film WHERE title like 'A%';
SELECT * from film WHERE title like 'A%r';
SELECT * from film WHERE title like 'Dinosaur%';
SELECT * from film WHERE title like '%Dinosaur%';

-- muje film tbl m se vo data nikalna h jisme drama present  ho discription m     and  title  
SELECT * from film where description like '%drama%';
SELECT * FROM film WHERE title like  'A_';
--  yaha  jab kid undefine character ka batana ho to '_' ka use karege
SELECT  * FROM film WHERE title like 'A_E%' ;
-- get movie title film id relese year descroption    condition  title =  2nd = c  start =a 
-- minimum 4 cher  last 4th = t   
 -- movies title = 2 = f , 4 =i  end egg 
 --  title  minimum char =5   3rd= a
 SELECT title , film_id , release_year , description from film where title like '_c%' ;
 SELECT title , film_id , release_year , description from film where title like 'a%_c%' ;
 SELECT * FROM film where title like '%t____';
 SELECT * FROM  film WHERE title like '_f_i%egg';
 SELECT * FROM film WHERE title like '__a__%' ;





