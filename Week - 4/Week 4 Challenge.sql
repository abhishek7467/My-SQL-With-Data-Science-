/*

					Question 1 


1. Write query to select film_id, title, length of title, 
description (to be displayed in upper case) from table 
film (schema - sakila).


*/


use sakila;

describe film;
SELECT 
    film_id,
    title,
    LENGTH(title) AS length_of_title,
    UPPER(description) AS Description_In_Upper_Case
FROM
    film;





/*

					Question 2 
                    
                    
2. Write query to display result set shown in figure 1 from table film (schema - sakila).


*/


SELECT 
    CONCAT(title, REVERSE(title), title)
FROM
    film;




/*

					Question 3 
3. Write query to display result set shown in figure 2 from table film (schema - sakila).

*/

SELECT 
    film_id, title, LEFT(description, 12)
FROM
    film; 




/*

					Question 4 

4. Write query to display result set shown in figure 3 from table film (schema - sakila).


*/

describe film;
SELECT 
    title, CONCAT(REVERSE(title), REVERSE(title)) Codeward
FROM
    film;










/*

					Question 5 

5. Write query to display number of days since the last update in table actor (schema - sakila).


*/


SELECT 
    DATEDIFF(NOW(), last_update) Number_Of_Days_From_Now
FROM
    actor;



/*

					Question 6

6. Write query to display result set shown in figure 4 from table customer (schema - sakila).



*/


SELECT 
    create_date,
    DATE(create_date) AS Date_From_create_date,
    TIME(create_date) AS Time_From_create_date
FROM
    customer;


