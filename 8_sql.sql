-- varchar and char 
--  char is a fox size data type it will keep only the dixed data in it 



use test; 
create table epl (name1 char (3));
insert into epl values("A");   
insert into epl values("A ");   -- spase do not count   length =1
insert into epl values("A  ");    -- spase do not count   lenth =1
insert into epl values("A B");     -- here spase count    length =3
select name1 , length(name1) from epl;



create table ep_var (name1 varchar(3));
insert into ep_var values("B   ");
select name1 , length(name1) from ep_var;
insert into ep_var values("B    ");
select name1 , length(name1) from ep_var;
insert into ep_var values("B     ");
select name1 , length(name1) from ep_var;

-- check 
create table ep3 (eid int check(eid>2) );
insert into ep3 values (1);  -- it give error bcoz of check condition not fulfill
insert into ep3 values (5);  
create  table 
ep4(gender char(1) check(gender in ("m","f","o")));
insert  into ep4  values ('m');

insert  into ep4  values ('z');  -- it will give error bcoz of  check condition


--  how to give more then 1 condition in check 
create table
ep5(age int ,gender char(1),
check(age>10 or gender in ("m","f","o"))) ;

insert  into ep5 values (2,"m");
insert  into ep5 values (12,"m");
insert  into ep5 values (2,"z");    -- it will give error  bcoz none of both condition fullfill 
insert  into ep5 values (12,"z");
select * from ep5;

-- use of Delete  
select * from ep4;
delete  from ep4;
select * from ep4;

delete  from ep5  where  age > 3;
select * from ep5;


-- update 

select * for




-- drop 
-- drop karne se sari raws ke sath columns bhi delet ho jati h 
-- drop karne ke bad delet hui chijo ko recover kar sakte h yani drop process ko undo kar sakte h 
drop table ep5;
select * from ep5;



-- truncate 
 -- ye bhi dalet karne ka hi tarika h
 -- isse delet karne ke bad data ko dubara nhi prapt kia jaa sakta 
 -- truncakte mpahle puri table structur k sath delet hoti h fir structure dubara create ho jati h  is trh se ye baki se fast h
 
 
 
 -- Q) group by , distinct  , different btw both ?  data filter using group by
 -- Q) different btw delet , Drop , Truncate ?
 
 




















