use marketing;
create table ghanshyam( 
			id int ,
            ename varchar(20) ,
            status bool,
            secondaryname varchar(20),
            constraint marketing_test_secname_check
            check (reverse(secondaryname)=ename));
            
            
create table ghanu (
			house_id  int  unique,
            purchase_price  double,
            selles_price double,
            constraint check_for_price
            check (purchase_price)) ;
        
        
show tables;

drop table student;
create table student(regstr_no int  , sname varchar(20) ,
					sid int primary key , 
                    constraint marketing_student_fk 
                    foreign key (sid) references student_hobby(sid));
                    

create table student_hobby(sid int ,hobby varchar(20));

-- city contry  
create table  customer(
				cst_id int primary key ,
                cst_name varchar(20),
                contry_name varchar(20),
                city varchar(20), 
          constraint abc1  unique (contry_name, city) );
                
drop table customer;
drop table contry;
create table contry (
				contry_id  int, 
				contry_name varchar(20),
                city varchar(20),
                constraint marketing_custmr_contry_fk
                foreign key (contry_name,city) references customer(contry_name,city) );
                
-- note jis bhi coloum ko foreign key banana ho vo column parent table me  ya to unique honi chahie ya to unique honi chaie 
-- do foreign key ho to error ane pr dono  column ko ik sath create table ke last me unique  bna kr dekh lena


-- alter 
 desc contry;
 alter table contry
 add column phone1 varchar (20) default 0;
 
 alter table contry drop phone1;
 -- yaha column nhi likha sidha colm name dia h. 
 
  desc contry;
  alter table contry rename to companies;
  -- yaha table ka name  rename kia h 
  
  desc companies;
  alter table companies 
  rename column city  to cities ;
  -- yaha column ka name badla h
  
  -- modify  vs change
   -- modify se solumn ka data type badal sakte h 
   -- note => data type tbhi badal sakte h jab column me koi entry na  ho varna error dega
   
   -- read about alter table 
   
   --  create a table having customer id, name ,     
   -- use the alter table make the customer id  as primary key with a auto increment feature
   
   -- add  the order id as  the foreign key with the realtion ship  with order table]
   
   
   
   create table table1 ( 
						id int ,
                        str varchar(20) );

insert into table1  values (1,'e'), (2,'f') , (3,'g') ,(4,'hS') ;
select * from table1;

					
                    
   
  

 
 