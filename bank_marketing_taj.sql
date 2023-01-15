create database bank_marketing
use bank_marketing

create table bank_details

create table if not exists bank_details(
age int,
job varchar(30),
marital varchar(30),
education varchar(30),
`default` varchar(30),
housing varchar(30),
loan varchar(30),
contact varchar(30),
`month` varchar(30),
day_of_week varchar(30),
duration int,
campaign int,
pdays int,
previous int,
poutcome varchar(30),
emp_var_rate int,
cons_price_idx int,
cons_conf_idx int,
euribor3m int,
nr_employed int,
y varchar(30));


show tables
select * from bank_details



drop table bank_details
drop database bank_marketing1


SHOW GLOBAL VARIABLES LIKE 'local_infile';
set global local_infile = 1;
                            
load data local infile 
'D:/bank-additional/bank-additional-full.csv'
into table bank_details
fields terminated by ';'
enclosed by ''
lines terminated by '\n'
ignore 1 rows;

UPDATE bank_details
SET y = REPLACE(y, '"', '');

UPDATE bank_details
SET job = REPLACE(job, '"', ''),
   marital  = REPLACE(marital, '"', ''),
   education = REPLACE(education, '"', ''),
   `default` = REPLACE(`default`, '"', ''),
   housing = REPLACE(housing, '"', ''),
   loan = REPLACE(loan, '"', ''),
   contact = REPLACE(contact, '"', ''),
   `month` = REPLACE(`month`, '"', ''),
   loan = REPLACE(loan, '"', ''),
   day_of_week = REPLACE(day_of_week, '"', ''),
   poutcome = REPLACE(poutcome, '"', ''),
   y = REPLACE(y, '"', '');

   





‪‪D:\bank-additional\bank-additional-full.csv
‪