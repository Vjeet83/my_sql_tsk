show databases;
-- read about hierecal formate--

-- single row function
-- multy row function
-- oprators 
-- FUNCTION--

-- string function --
use sakila;
select * from actor;
select  first_name , length;
-- length vs char_length -- chaina language ke word se related example
-- length mathod bites me reeturn karta h
select length("g") from dual;
-- concat vs   concat_ws
select concat_ws("&","hello " , " hye " , " kaipoche");

select * from actor where last_name like concat("%","A");

-- substr = substr(column name , start point , no of charctr required)
select first_name,substr(first_name,2,3) from actor;

select first_name,substr(first_name,-4,3) from actor;

-- rpad = (column_name , no of chr required , add if not enough chr at right side)
select first_name , rpad(first_name,5,"&") from actor;
select first_name , lpad(first_name,5,"&") from actor;
select first_name , lpad(first_name,5," ") from actor;

-- Trim 
-- by default to trim wide space hi htata h pr agar luch or hatana ho to bracat m de sakte h
select "  Japan  " from dual;
select trim("    Japan   ") from dual;

select trim("x" from "xxxxxjaxxxpanxxxx") from dual;
select trim(leading"x" from "xxxxxjaxxxpanxxxx") from dual;
select trim(trailing"x" from "xxxxxjaxxxpanxxxx") from dual;
select trim(both"x" from "xxxxxjaxxxpanxxxx") from dual;
select trim("xa" from "xa%xxxxjaxxxpanxxxx") from dual;


select first_name , replace(first_name,"P" ,"2") from actor;


-- instr  or locate-- ,both are almost same
select first_name,instr(first_name,'p') from actor;

select first_name,locate("P",first_name) from actor;

-- search about string function and learn other string function


-- Numeric function --
select round(14.45) from dual;
select round(14.65) from dual;

select round(14.45,1) from dual;
select round(14.44,1) from dual;
select round(14.45,2) from dual;

select round(14.45,-1) from dual;
select round(16.45,-1) from dual;
select round(14.45,-2) from dual;
select round(64.45,-2) from dual;

-- truncate--
select truncate(78.875,1) from dual;
select truncate(78.875,3) from dual;

select last_update,adddate(last_update,2) from actor;

select last_update,
adddate(last_update, interal 2 hour) from actor;


select last_update,data_formate(last_update,"%M") from actor;


-- read about constraints and keys(foreign ,primary,candidate , etc)

