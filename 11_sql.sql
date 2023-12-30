
use sakila;
show tables; 
desc actor;
desc actor_info;
select * from actor_info;
select * from film_actor;

-- USING mathod in join
select actor.actor_id ,first_name ,film_id
from  actor  join film_actor using (actor_id) ;


create table students(id int ,sname varchar(20));
insert into students values(1,"vjeet");
insert into students values(2,"ansh");
insert into students values(3,"deepu");
insert into students values(4,"laddla");
insert into students values(5,"ankit");


select * from students;

create table student_hody (id int , hody varchar(20));
insert into student_hody values(1,'cricket');
insert into student_hody values(2,'football');
insert into student_hody values(3,'bahut kuch');
insert into student_hody values(4,'women empowerment');
insert into student_hody values(7,'nulla');


select students.id ,sname, hody 
from students inner join student_hody using(id);

-- you can write upper code like this also forn the same result
select students.id ,sname, hody 
from students , student_hody where students.id = student_hody.id;

-- 3 rd mathod for sam result
select students.id ,sname, hody 
from students inner join student_hody on(students.id = student_hody.id);

-- equivalent join   inner join  hi h  ab name change car dia h naya update me

-- left   join
select students.id ,sname, hody 
from students left join student_hody on(students.id = student_hody.id);

-- right join 
select students.id ,sname, hody 
from students right join student_hody on(students.id = student_hody.id);

select students.id ,sname, hody 
from students full join student_hody on(students.id = student_hody.id);    -- error  =>
-- full join is not supported in my sql   insted we use left join and right join  and add these b union

-- natural join inner join ki tatrah kam karega agar common column h
-- natural join  cross profuct ki tarah kam karega agar common column nahi h
-- join With alias 
select s.id ,sname, hody 
from students as s join student_hody  as h on(s.id = h.id);
-- we have to give an alias name also  to a quary  when we use it as a sub wuary
select  actor.actor_id ,first_name ,last_name ,film_id,title,release_year 
from 
actor inner join film_actor using (actor_id)
inner join film using (film_id);
