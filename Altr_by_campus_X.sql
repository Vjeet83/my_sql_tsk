-- alter  is a part of dml (data manuplation language);
create database campus_x ; 
use campus_x;
create table use_altr (
    nam  varchar(20) ,
    id  int auto_increment   , 
    f_name varchar (20)
    );
show tables;
show columns from use_altr;
insert into use_altr(nam,f_name)  values ("Vjeet", "mohan"),("vu" , "vikram") ;
select * from use_altr;

-- alter -> add
alter table use_altr ADD column email varchar(20) NOT NULL;
show columns from use_altr;

alter table use_altr  ADD column to_delet int ;
-- alter -> delet columns 
show columns from use_altr;
alter table use_altr DROP to_delet;
show columns from use_altr;


alter table use_altr ADD column abcd int;
-- alter -: modify columns
show columns from use_altr;   -- check type of abcd colmn
alter table use_altr MODIFY COLUMN abcd varchar(20);
show columns from use_altr;   -- check type of abcd colmn


truncate use_altr;
select * from use_altr;
 -- alter -: add constrant 
 alter table use_altr add constraint add_const unique (id);
 -- yaha add_const name se constraint ka name dia h 
 -- qki jb constraint delet karna hota h to name ki jarurat padti h
 show columns from use_altr;
 -- qki pahle vali entries me pahle se kuch entry repeat ho rahi thi is lie ye code work
 -- nahi kar raha tha islie pahle vali entries truncate se hatani padi
 
 -- these are some code to add default contraint
 -- (1) ALTER TABLE your_table_name ALTER COLUMN your_column_name SET DEFAULT your_default_value;

-- (2) ALTER TABLE your_table_name
--     ADD CONSTRAINT DF_your_constraint_name DEFAULT your_default_value FOR your_column_name;

-- alter -:  remove constraint
alter table use_altr  drop constraint add_const;
-- add_const name pahle dia hua the jb constraint add kia tha id me 
show columns from use_altr;     --  check key in id it has been removed
