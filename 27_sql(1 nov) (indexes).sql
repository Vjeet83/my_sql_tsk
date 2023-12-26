/*
The MySQL system automatically generates index on columns declared 
as Primary Key or with Unique constraint. This is mandatory to enforce 
niqueness of values. Those indexes are of Primary type. 
They are also called as Clustered Index. All other index types than 
Primary are called as Secondary or non-Clustered Index.


Primary index is special, as the index 
itself is stored together with the data in the same table.
 The clustered index enforces order of rows in the table.
 A table can have only one Clustered Index because of this property
 of enforcing order of rows in the table.
 
 
 A composite index is the one which is created on combination of
 two or more columns. Sometimes it is also called a compound index. 
 Composite indexes can help speed up execution of query only if you
 choose not only correct combination of columns but also their proper
 order to form index key. For example combination of columns (c1, c2, c3)
 as index key in composite index will have different search behavior than 
 combination (c3, c1, c2) of same columns.
 
 The column or combination of columns used for creating index is called as index key.
 Generally the rule of thumb is to choose such column or combination of
 columns which are involved in search criteria (WHERE clause), 
 ORDER BY clause, GROUP BY clause and DISTINCT clause. 
 
*/
use marketing;
show tables;

create table t( a int primary key auto_increment,
				b varchar(20),
                c int,  index index_c(c));

show indexes from t;

#  creating index on already available table
#  create index index_name on table(col);

#it will show the execution plan created by mysql engine on the same
explain  select * from table where  col="value";

-- how to drop index
-- drop index index_name on table;

#prefix index
# create index index_name on table(col(2));

# looking at cardinality here
# select count( distinct left(col, 2)) as unique_da from table;

/*

Descending Index
When you prefer using order by or limiting the rows
Create index index_name on table( col desc,  col asc)  ;

here still it work if I change the select * to col asc and col2 desc
( backtracking)
*/

# invisible index - to be skipped by mysql engine optimizer
#by default index is visible
# create index inex_name on table( col) visible;

-- alter table tablename alter index index_name invisible;
# Primary index can't be made invisible








-- traversing  = read rows one by one (without use indexing )  take lots of time
-- composite index and
--  comppostie index   = indexing in combination of columns
show databases;
use marketing;
create table regex (id int primary key auto_increment,
name varchar(20) , salary int);

desc regex;

show indexes from regex;

-- cardinality 
 insert into regex values(1,'tushar',12 ),(2,'vjeet',20) , (3,'sonu',32);
 
 desc regex;
 
 select * from regex;
 
 show indexes from regex;
 
 -- create index on already  available table 
show indexes from regex ;

insert into regex values (4, 'shyam' , 200 ) ;

create index regex_isalary2 on regex(name) ;

explain  select * from regex where name ='tushar';

s
 