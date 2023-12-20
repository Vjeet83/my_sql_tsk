use marketing;

drop table persentQues;
create table persentQues (id int , mark varchar(20)) ;

insert persentQues value (1,'60%') , (2,'40' ) , ( 3,'80') , (4 , '50%');
insert persentques value (5,'60%') , (6,'80%') , ( 7,'54') , (8,'40'),(9,'40%')
,(10,'50%');
select  * from persentQues;

SELECT id, mark
FROM persentQues
WHERE mark LIKE '%[%]%';

SELECT id, mark
FROM persentQues
WHERE mark LIKE '%!%%' ESCAPE '!';

select id , mark from persentques where mark in ;
select id , distinct mark from persentques ;
