-- tcl ( transaction control language):
use marketing;
show tables;

drop table test;
desc test;
show tables;
create table test ( id int , name varchar(20)) ;
insert into test values (10 , "hay"),(20,"abc"),(30,"def") ;
alter table test 
add constraint primary_in_test  primary key (id);
select * from test;
update test set name="baba" where id =10 ;
select * from test;
select @@autocommit;

set @@autocommit=0;
select * from test;
update test set name = "dada" where id=30;
-- yaha autocommit =0 kare par  last update permanent save nahi hua 
-- file ko closs karke vaps open karege to id=30 par pahle vala name hi show hoge

update test set name ="var" where name = "dada";
-- is tarah ki quary bhi run ho rhai h jisme name dekar name me i change kr rhe h

select @@autocommit;
update test  set id =40 where id = 30;
-- ye change primary ki me bhi ho rahe h
select * from test;
set @@autocommit = 1;

update test set name = "var" where id =30;
-- ye wuary successfully run ho rahi h jabi id =30 abhi tempararyly h hi nahi 
-- but table ki kisi colum me name me "var"  nhi save hua 

update test set name = "nobi" where id =40;
select * from test;
-- ye bhi succcessfully run ho gai pr id = 40 temprarily hi save  h 
-- ab file ko pura close kar ke  dobara chalate h
-- ab hamne dekha ki id = 40 permanently save ho gay h jo ki autocommit =0
-- kar ke save kia tha sath hi id=40 pr name = nobi bhi permanently save ho gya; 
-- qki auto commit=1 karne pr pure file pr perform hua or jo temprarily save tha 
-- vo bhi permanent ho gaya







-- transection will be  END when we proform rollback operation;
show tables ;

create table test ;

-- ddl statement are the autp commit statement  mean it will save  @@autocommit comand =0 or 1  never effect it
 -- ik transection me  mana 3 savepoint bnaye  tb agar  dusre  savepoint tak rollbak kara to age ke savepoint  delet ho jayege 
 -- or age ke savvepoint comand me use bhi karege to not exist batayega

-- what is schemma








