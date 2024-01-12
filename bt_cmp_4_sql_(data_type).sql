

# datatype
# numeric, string , date

# numeric

-- int ,smallInt ,decimal  , floating
-- int 4 byte for one word
-- ddl comand -- create ,
-- dml  comand  -- insert
 
-- what is database according to sir
-- database =workspace , a collection of similar values , a collection of similar objects

show databases;

use bootcamp;
show tables;
create table test1(id int 
                   );
insert into test1(id) values (20);
select length(id) from test1;
 select *  from test1;
 insert into test1(id) values (20);

 
 insert into test1(id) values (200);
select length(id) from test1;
 select *  from test1;
 
 -- INT (width   ,  [Unsigned]  , [Zerofill]  )
 -- -2,147,483,648  to  2,147,483,647          (4 byte storage)
 -- whdth = yani integer ki max size kitni rakhna chahte h (digits me )
 -- Unsigned = yani integers value sirf +ve hogi negetive nahi 
 -- zerofill  =
 
 create table test3 (id int  unsigned);
 insert into test3(id) values (-2);  -- ye error dega qki value -ve h 
 
 
 # Big int 
 -- 8 byte 
 -- max range = 18,446,744,073,709,551,615     unsigned big int
 create table test_bigint  (id bigint unsigned);
 insert into test_bigint values(1234566789);
 select *  from test_bigint;
 
 # tinyint 
 -- storage  = 1 byte  = 8 bit (2^8 = 256)
 -- boolean => Tinyint 
 -- max value -128 to 127  or (0 to 255) 
 create table xyz_tinyint(id tinyint);
 insert into xyz values(-130);  -- ye error dega wwki value range ke bahr h 
 
 # similarly 
  # smallint  
       -- storage => 2 byte  (2^16)
 # mediumint 
       -- storage => 3 byte  (2^24)
       

# BOOL
# Bool == Tinyint
-- 0 to 256 unsigned     (-127 to 128)
create table test_bool (i bool);
insert into test_bool values(True),(False);
select * from test_bool;
insert into test_bool values (1) , (0) , (-128) , (127);
select * from test_bool;
-- bool me ye values bhi save ho gai qki bool real me tinyInt hota h 
-- jisme True =1 or False = 0 hota h 
-- par usme -128 se 127 (signed me) ki valu(tinyint ki value) bhi save ho sakti h 

 # folat and Double 
 create table num1(id float(5,2) );
 -- yaha 5 = max digit kitni chaie  decimal vali mila kr
 -- or 2 = desimal ke bad kitni digit chahie 
 insert into num1 values(400);
 select * from num1;
  insert into num1 values(400.2);
 select * from num1;
 insert into num1 values(434.23455); -- desimal ke bad 2 digit hilega baki gayab
 select * from num1;
insert into num1 values (4555) ; -- ye error dega qki 
-- value us range se jyada h jo hamne float ke lie di h

# float(P,S) 
-- P => precision value
-- S=> Scale value 
-- P value 24 tak h to to float 4 byte storage lege
-- p ki value 24 se jyada h to 8 byte storage lega


# Double 
-- storage 8 byte
-- decimal value 10 se 12 lete h to double use karna padta h 


# decimal (P,S)
-- storage => 8 byte



#   Data and Time

# Date

-- formate (Year-month-date)

create table date123 (dob date);
insert into date123 values("19-12-13");
select * from date123;
insert into date123 values("19-13-13"); -- ye error dega qki hmne month 13va dia h jo galat h 

insert into date123 values("15/10/22");   
-- ye error dega par value isse bhi store ho sakti h 
select * from date123;

# Time 
-- formate =  HH:mm:ss


# DateTime
-- formate = yy-mm-dd    hh:mm:ss
-- range 1001-01-01 00:00:00:   to  9999-12-31  00:00:00;
 
--  ques)  Date time  vs  timestamp;
-- cast mathod se hm string ko date type me change kar sakte h 


 # string
 -- varchar , char , blob , string 
 -- char : fixed size data
 
 # varchar
 -- varchar(S,)
-- S => max size in byte  , we can defint it 
-- agar character 20 byte se kam ka hua to bachi storage ko use kar sakte h 
 -- char me esa nahi hota h
 
create table ep2(name1 char(3) );
insert into ep2 values("c");
select name1 ,length(name1) from ep2;

insert into ep2 values("  c");   # yaha eide space bhi diye h 
select name1 ,length(name1) from ep2;    # isne wide spaces bhi gine h 
# pr ye c ke bad vale wide spaces nahi ginta 
insert into ep2 values("   a   ");
select name1 ,length(name1) from ep2;

-- do it with varchar
create table ep3(name1 varchar(3) );
insert into ep3 values("c");
select name1 ,length(name1) from ep3 ;

insert into ep3 values("  c ");   
select name1 ,length(name1) from ep3 ;   

insert into ep3 values("   a   ");
select name1 ,length(name1) from ep3 ;

-- different between varchar and char 
-- varchar me string ke bad extrawide spaces h to unse vha tak hta dega jo max storage hmne define ki h 
-- pr char me esa nhi hota


use world ;
select name , countrycode, population,
    case countrycode
        when "AFG" then "hey"
    end as "abc"
    from city;
    
select name , countrycode, population,
    case
        when countrycode ="AFG" then population*2
        when countrycode ="DZA" then "hello"
        when countrycode ="" then "hey"
        else population
	end as "aBc"
	from city;

# Ques
select * from city;
select countrycode , District , concat(count(*) , "city")
from city 
group by countrycode ,district 

;
