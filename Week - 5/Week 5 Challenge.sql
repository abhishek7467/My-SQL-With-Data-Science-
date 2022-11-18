use sakila;
/*       			
								Question 1
1. Write a single query to select payment_id, customer_id, 
staff_id, rental_id, amount from table payment (schema - sakila) 
which satisfies both below mentioned conditions.

Range for customer_id 10,20,30,40,50,60,70,80,90,100
staff_id is 2
*/
SELECT 
    payment_id, customer_id, staff_id, rental_id, amount
FROM
    payment
WHERE
    (customer_id = 10 OR customer_id = 20
        OR customer_id = 30
        OR customer_id = 40
        OR customer_id = 50
        OR customer_id = 60
        OR customer_id = 70
        OR customer_id = 80
        OR customer_id = 90
        OR customer_id = 100)
        AND staff_id = 2;







/*

								Question 2
2. Write query to display record of table film (schema - sakila) ordered by rating in descending order.
*/

SELECT 
    *
FROM
    film
ORDER BY rating ASC;

SELECT 
    *
FROM
    film
ORDER BY rating DESC;


/*
								Question 3
3. Write a single query to display payment_id, amount and updated_amount from table payment (schema - sakila) 
which supports the result set with below mentioned criteria.

amount is greater than 5.0
updated_amount is double of amount and rounded off
*/

SELECT 
    *
FROM
    payment;

SELECT 
    payment_id,
    amount,
    ROUND(amount * 2) updated_amount,
    last_update
FROM
    payment
WHERE
    amount > 5.0;



/*
								Question 4
4. Write a single query to display below mentioned values from table payment for each customer (customer_id) (schema - sakila)

customer_id 
Total sum of the payment
Average of the payment
Standard deviation of the payment
Variance of the payment

*/

SELECT 
    *
FROM
    payment;
SELECT 
    customer_id,
    amount,
    SUM(amount) Total_Sum_Of_Payment,
    AVG(amount) Average_Of_Payment,
    VARIANCE(amount) Variance_Of_Payment
FROM
    payment;


/*
								Question 5
5. Write a query to display city_id, city, country_id from table city for country name starting with A and B (schema - sakila) (Hint: Use subquery)
*/

SELECT 
    *
FROM
    city;
SELECT 
    city_id, city, country_id
FROM
    city
WHERE
    city = ANY (SELECT 
            city
        FROM
            city
        WHERE
            city LIKE 'A%' OR city LIKE 'B%');


/*
								Question 6
6. What is the difference between ANY and ALL keywords with respect to subquery in SQL? (MCQ)

ALL – Comparison with every value ANY – Comparison with atleast one value
ALL – Comparison with atleast one value ANY – Comparison with every value
ALL – Comparison with every value ANY – Comparison with atleast two value
ALL – Comparison with atleast two value ANY – Comparison with atleast one value

*/

/*          

Answer :   ALL – Comparison with every value ANY – Comparison with atleast one value

*/














