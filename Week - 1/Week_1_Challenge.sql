




####     Question 1. Write type of attributes.    

/*                        ANSWER 
	


1. Simple attribute : 
            An attribute that cannot be further subdivided into components is a simple attribute. 
            Example : The roll number of a student, the id number of an employee. 


2. Composite attribute:
			An attribute that can be split into components is a composite attribute. 
			Example: The address can be further split into house number, street number, 
            city, state, country, and pin code, the name can also be 
            split into first name middle name, and last name. 

3. Single- valued attribute:
			The attribute which takes up only a single value for each entity instance is 
            a single-valued attribute. 
			Example : The age of a student.

4. Multi-valued attribute:
			The attribute which takes up more than a single value for each entity instance 
            is a multi-valued attribute. 
			Example: Phone number of a student: Landline and mobile. 
			
5. Derived attribute:
			An attribute that can be derived from other attributes is derived attributes. 
			Example: Total and average marks of student.

Complex attribute : 
			Those attributes, which can be formed by the nesting of composite and multi-valued attributes, are called “Complex                 
			Attributes“. These attributes are rarely used in DBMS(DataBase Management System). That’s why they are not so popular.
			Example: let us consider a person having multiple phone numbers, emails, and an address.
            
            
*/



##### Question 2. ACID stands for?

/*
						ANSWER
                        
                        
ACID stands for Atomicity, Consistency, Isolation, Durability

Atomicity :
			Atomicity means that you guarantee that either all of the transaction succeeds or none of it does. 
			You don’t get part of it succeeding and part of it not. If one part of the transaction fails, the whole transaction fails. 
			With atomicity, it’s either “all or nothing”.

Consistency:
			This ensures that you guarantee that all data will be consistent. All data will be valid according to all defined rules, including any 
            constraints, cascades, and triggers that have been applied on the database.
			
Isolation:
			Guarantees that all transactions will occur in isolation. No transaction will be affected by any other transaction. 
            So a transaction cannot read data from any other transaction that has not yet completed.

Durability:
			Durability means that, once a transaction is committed,
            it will remain in the system – even if there’s a system
            crash immediately following the transaction.
			Any changes from the transaction must be stored permanently. 
			If the system tells the user that the transaction has succeeded, the transaction must have, in fact, succeeded.

*/


######### Question 3. Write three examples of data definition language commands.
/* 
									ANSWER
                                    
                                    
1. CREATE
2. ALTER
3. DROP
4. RENAME

*/



################## 	Question 4. Write examples of transaction control language commands.

/*
								ANSWER
							
                            
1. COMMIT
2. ROLLBACK
3. SAVEPOINT
                                

*/




################## 	Question 5. Write name of default tables of sakila schema of MySQL.

/*
								ANSWER
                                

Default tables of sakila Schema :
									actor,
                                    address,
                                    category,
                                    city,
                                    countery,
                                    customer,
                                    film,
                                    film_actor,
                                    film_category,
                                    film_text,
                                    inventory,
                                    lanuguage,
                                    payment,
                                    rental,
                                    staff,
                                    strore.


*/






################## 	Question 6. Explore EER diagram of schema sakila.

/*
								ANSWER
                                
EER diagram of Schema sakila attch with the screenshot.                                

*/




################## 	Question 7. Look for foreign keys used in the table category (Navigator).

/*
								ANSWER
                                
                                
No Forgien Key used in category, therefore primary key in category is category_id which is used as forgien key in film category. 



*/






################## 	Question 8. Look for indexes used in table film_actor (Navigator).

/*
								ANSWER
                                
                                
Indexes used in table film_actor are:
									PRIMARY
                                    idx_fk_fim_id
Screenshot attach also.


*/






################## 	Question 9. Look for stored procedures used in the sakila database (Navigator)

/*
								ANSWER
                                
Screenshot included.                                 




*/





################## 	Question 10. Look for views used in the sakila database (Navigator).

/*
								ANSWER
                                
 Screenshot included.
 
 views used in the sakila database. 
 actor_info
 customer_list
 film_list
 nicer_but_slower_film_list
 sales_by_film_category
 sales_by_store
 staff_list




*/




################## 	Question 11. Write keyboard shortcut for executing all statements in MySQL.

/*
								ANSWER
							
						
Execute all statement : CTRL + SWIFT + ENTER 
Execute current statment : CTRL + ENTER 
Execute current statement (vertical text output) : CTRL + ALT + ENTER 



*/




################## 	Question 12. Write keyboard shortcut for opening new tab in MySQL.

/*
								ANSWER
                                
                                
Keyboard shortcut for opening new tab in my sql : CRTL + T 




*/






################## 	Question 13. Explore all the schemas through navigator in MySQL.

/*
								ANSWER
                                
                                
SCREENSHOT INCLUDED IN MY CASE THERE IS ONLY ONE SYS 



*/






################## 	Question 14. Create new schema in connected server in MySQL.

/*
								ANSWER
                                
                                
SCREENSHOT INCLUDED I HAVE CREATED A SCHEMA  "CALLED MY_NEW_SCHEMA"



*/



################## 	Question 15. Create new SQL tab in MySQL for running queries and save the file.

/*
								ANSWER
                                
                                
SCREENSHOT INCLUDED I HAVE CREATED A NEW TAB AND SAVED IT AS " MY SQL QUERY" 



*/












