use bootcamp;
drop table test123 if exist;

create table test123( id int, name varchar(20), status bool,
secondaryName varchar(20), 
constraint sakila_test123_secName_check
check ( reverse(secondaryname)= name  ));

select * from companies;
show tables;


-- alter  use 
-- add column , drop column , 
-- rename table
rename table test123 to test12;
alter table test12 rename to test1234;

alter table test1234 
rename column secondaryName to secndryName;

select * from test1234;

-- change data type
alter table test1234 
modify secondaryName char(50);

-- change data type and column name then use CHANGE


-- update 


# TCL 
-- it is logical ( bcz it donot change in table on same time )

create table test(id int, name varchar(20));

insert into  test values(10,"hey"),(20,"abc"),(30,"def");
select * from sakila.test;


update test set name="tushar" where id=10;
select @@autocommit;
set autocommit =0;
-- auto commit =1 pr har steps automaticly save hoti rahegi 
-- or auto commit = 0 pr  automaticaly save nahi hogi ham karege tabi hogi

update test set name='23' where id=20;
commit;
-- autocommit 0 ho to save karne ke lie commit karege

select * from test;
rollback;
select * from test;
-- rollback table ke changes ko hata deta h


set autocommit=1;
start transaction;
select * from test;
update test set name="xuz" where id = 20;
rollback;
select * from test;   -- rolback ho gaya 
 -- if autocommit =1 and you start transaction  then bydefault autocommit will be = 0 

-- dml comand se transaction start hua 
--  end karne ke lie ddl, dcl , commmit ,rolback  use kar sakte h

commit;
select @@autocommit;
set autocommit=0;

-- save point
update test set name="new abv" where id = 20;
select * from  test;

savepoint test_id_chang;

update test set name="asdf" where id = 10;

rollback ;
select * from test;
-- rollback  dono savepoint ke changes ko rollback kar dia na ki ik ko ;






# change sating  (type "set sql" and it show all option
set sql_safe_updates=0;

# read about CTE(common table expression) and how to use it ;