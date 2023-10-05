use marketing;
create table xyz (price double(5,2));
insert into xyz values (15.2);
insert into xyz values (15.2343);
insert into xyz values (15.223);
insert into xyz values (15);

drop table xyz;

create table xyz (price1 float ,price2 double);
insert table xyz values(1.23456 , 1.23456);
select * from xyz;
-- size of float = 4 bite , double = 8 bite;
-- desimal  

drop table xyz;
create table xyz(birthdate date ) ;
-- yyyy-mm-dd
insert into xyz(birthdate) values('2023-09-12');

-- date formate = YYYY-MM-DD   
-- time formate = HH:MM:SS

create table xyz(birthdate date ,birthtime time , birthdata datetime) ;
insert into xyz values (curdate() , curtime(),now());
select * from xyz;

select birthdata, year(birthdata) from xyz
select birthdata, year(birthdata) as year, month(birthdata) as months from xyz;

select birthdata , year(birthdata) ,Last_day(birthdata) from xyz;

select birthdata , year(birthdata) ,last_day(birthdata) ,monthname(birthdata) ,
datediff(now(),birthdata ) from xyz;

select birthdata , year(birthdata) ,date_add(birthdata, interval 5 year) from xyz;
-- you can use datesub keyword also to subtract in date;
 select concat(year(birthdate) ,'year' , ' ' , month(birthdate) , 'month', ' ' , 
               week(birthdate),'week'  , ' ' , day(birthdate),'days' )  from xyz;
-- other mathod to do the same as above  =>  DATEFORMATE
select birthdata ,date_formate(birthdata, '%b %c' ) from xyz;

-- timestamp  vs datetime   keywords 
-- timestamp range 1976 to 2038 year  
-- timestamp can store date btw given range 
-- but datetime have no range we can store any date

use sakila;
create table captions2 (
text varchar (150),
created_at timestamp default current_timestamp  ,
updated_at timestamp on update current_timestamp);

insert into captions2 (text , created_at ) values ('hey' , now() ) ;
update captions2 set text = 



-- Q) learn about alter , transaction control language(tcl) , 
-- Q) 

