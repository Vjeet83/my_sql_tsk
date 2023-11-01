use marketing;
show tables;
create table sir_task(sr_no  int ,
					  name varchar(20) ,
                      marks int );
 insert into sir_task (sr_no,name , marks)  values  (1,'aman' , 34) , (2, 'chaman' ,45) , (3, 'naman' , 34) , ( 4 , 'shiya' ,78) ,(5,'kiya' , 93) ,(6, 'aman' , null),
                        (7,'caman',73), (8,'aman',85) ,(9,'kiya',89);
insert into sir_task (sr_no , name , marks) values (10, 'aman' , null);
 show tables;
 select * from sir_task;
 
 select max(sr_no), name , count(*) , max(marks)  from sir_task  group by  name ;
 select t2.sr_no , t1.name , count(*) , max();
 
 SELECT t1.name, t1.max_sr_no, t1.row_count, t1.max_marks
FROM (
    SELECT name, MAX(sr_no) AS max_sr_no, COUNT(*) AS row_count, MAX(marks) AS max_marks
    FROM sir_task
    GROUP BY name
) AS t1;

 
 SELECT t1.sr_no, t1.name,t1.marks
FROM sir_task t1
WHERE (t1.name, t1.marks) IN (
    SELECT name, MAX(marks)
    FROM sir_task t2
    WHERE t2.name = t1.name
    GROUP BY t2.name
) ;
select * from sir_task;


SELECT t1.sr_no, t1.name, t1.marks, t2.name_count
FROM sir_task t1
JOIN (
    SELECT name, MAX(marks) AS max_marks, COUNT(*) AS name_count
    FROM sir_task where marks is not null and name ='aman'
    GROUP BY name 
) t2 ON t1.name = t2.name AND t1.marks = t2.max_marks ;

 