

/*
							Question 1

Write query to select all record from table customer 
(schema - sakila).


*/

use sakila;
describe customer;
select * from customer;



/*
							Question 2

Write query to select record from table customer for 
fields customer_id (Alias - ID), first_name (FName), 
last_name (LName), email (EmailID) (schema - sakila).


*/

select customer_id as ID,first_name as FName ,last_name LName,email as EmaliID from customer;

/*
							Question 3
                            
                            
Write query to display film title starting with alphabet ‘A’ 
and ending with alphabet ‘r’ from table film (schema - sakila).


*/

select * from film;
select distinct title from film where title like 'A%';
select distinct title from film where title like '%R';
select distinct title from film where title like 'A%R';



/*
							Question 4
                            
Write query to display first 100 records from table customer 
(schema - sakila).

*/

select * from customer limit 100;


/*
							Question 5

Write query to display payment_id, amount, rounded 
off value of amount and square root of amount from table 
payment (schema - sakila) in single statement.

*/

select * from payment;
select payment_id, round(amount), sqrt(amount) from payment; 



/*
							Question 6
		Create backup for schema – sakila.

*/


/*      
1-		Open MySql Workbench.
2-		Click on 'Server' .
3- 		Select  " Data Export "
4-		select "Object Selection --> select schema"
5-   	Click on Export to self-Contained File
6-		Choose path like "C:\MyNewsql\bin\newbackupfor.sql"
7-		Select Export Progress
9-		Open "MySQL 8.0 Command Line Client - Unicode"
# Write command in MySQL 8.0 Command Line Client - Unicode
10-		create database newbackupfor;
11-		use newbackupfor;
12- 	source ForBackup.sq;
13-		Press on "Start Export"
14- 	"Query OK, 0 rows affected (0.00 sec)

		Query OK, 0 rows affected (0.00 sec)
		Query OK, 0 rows affected (0.00 sec)
		Query OK, 0 rows affected (0.00 sec)
		Query OK, 0 rows affected (0.00 sec)
		Query OK, 0 rows affected (0.00 sec)"
        
15- 	Back to in msql workbench
16- 	refresh "SCHEMAS"
17-		check the databases

/* Data is copied successfully and recover by the backup data.  */

