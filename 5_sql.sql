-- length and char length 
-- length give return according to bite  
-- concate   by using concat we can add characters   
-- 
 select length('anand') ;
select  char_length('anand');
select  concat('h' , 'sd' ,'-',1);
select concat_ws("$" , "hey" , "hell" ,"123");

-- substr ( character  , start from ,how many char need , )  
 select substr('hello ji' ,  2); 
select substr('hello ji' ,  -2); 
select substr('hello ji' ,2 ,3); 

-- substr in substr  
select substr(substr('hello ji' ,  2), 2 ,2); 
-- inner substr is behave like character
-- we can use  substring insted of substr also

 -- instr -> we can use  
 
 select instr('hello_Baba' ,'e');
select instr('hello_Baba' ,'a');
select instr('hello_Baba' ,'u');
-- if given word is not exist in character then it return zero .

-- locate ->  it is same as "instr"  

select locate('a' ,'rajasthan');
select locate('a' ,'rajasthan' , 3);

-- ltrim -> ltrim can remove wide spaces exist at laft side. 
-- rtrim -> rtrim can ramove wide spaces wxist at right side. 

select ltrim('     xyz');
select ltrim('     xyz  toto');

select rtrim('xyz     ');
select rtrim('       xyz     ');


-- leading and trailing and both  in trim  keyword
-- leading ramove left side character  from given word 
-- trailing remove right sie character from given word
-- both can remove both side character from given word
select trim(leading "  "from "        xyz       ");
select trim(leading "z"from "zzzzzzxyzzzzz");

select trim(trailing "  "  from  "        xyz       ");
select trim(trailing "xx"from "xxxxxyzxxxxxxx");

select trim(both "  "from "        xyz       ");
select trim(both  "xx"from "xxxxxyzxxxxxxx");


-- Lpad and Rpad ->
-- example - if we want that  hello word contain 6 character but it has onle 5 at present then we can add remaining character by lpad or rpad 
-- in this example we use #  to fill remaining required character 

select lpad('hello' ,6 ,"#");

select rpad("hello1234" , 13 ,"&");


-- replace =>

select replace('vishvajeet' , 'jee' , '&');
select replace('vishvajeetsingh' , 'h' , '&');





use sakila;
select  name from customer_list LIMIT 5, 5;
select id ,name from customer_list; 
select * from language;
select count(*) from language;
desc language ;
-- dml => data menuplation language 

-- insert  statement insert into tabel  values (val1 , val2 , val3);
-- 
INSERT INTO language Values (null ,'portuguese', NOW());
-- primary key k andar null values nhi aa sakti bt  isme auto incriment ki vajah se error ko handel kr leta h
INSERT INTO language Values (10 ,'portuguese', NOW());
select * from language;
insert into language values (8 , "Russian" );   -- error aa rha h


-- Q) with pandas creat a datafrome from  sql;
