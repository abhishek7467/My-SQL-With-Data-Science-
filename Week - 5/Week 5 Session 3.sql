use employees;


SELECT 
    emp_no, salary
FROM
    salaries
WHERE
    salary IN (62102 , 66596, 71046)
        AND emp_no = 10001;

SELECT 100 XOR 100, 100 OR 100, 100 AND 100;


SELECT 0 XOR 100, 200 OR 100, 1100 AND 100;

SELECT 
    emp_no, salary
FROM
    salaries
WHERE
    salary NOT IN (62102 , 66596, 71046)
        AND emp_no = 10001;

SELECT 
    emp_no, salary
FROM
    salaries
WHERE
    salary NOT IN (23402 , 66074, 710460)
        AND emp_no = 10001;

SELECT 
    emp_no, salary
FROM
    salaries
WHERE
    salary IN (62102 , 66596, 71046)
        AND emp_no = 10001;

SELECT 
    *
FROM
    employees
ORDER BY hire_date;

SELECT 
    *
FROM
    employees
ORDER BY first_name
;

SELECT 
    *
FROM
    employees
ORDER BY gender;

SELECT 
    *
FROM
    employees
ORDER BY birth_date;

SELECT 
    *
FROM
    employees
ORDER BY hire_date ASC;

SELECT 
    *
FROM
    employees
ORDER BY gender ASC;
SELECT 
    *
FROM
    employees
ORDER BY gender DESC;


SELECT 
    *
FROM
    employees
ORDER BY birth_date , hire_date DESC;

SELECT 
    *
FROM
    employees
ORDER BY birth_date , hire_date DESC;

SELECT 
    *
FROM
    employees
ORDER BY birth_date , gender , emp_no ASC;


SELECT 
    *
FROM
    employees
ORDER BY birth_date , gender , emp_no DESC;


SELECT 
    *
FROM
    employees
ORDER BY birth_date ASC , gender DESC , emp_no ASC;


desc titles;

SELECT 
    *
FROM
    titles
ORDER BY 2 DESC;

SELECT 
    *
FROM
    titles
ORDER BY 4 DESC;

SELECT 
    *
FROM
    titles
ORDER BY 1 DESC;

SELECT 
    *
FROM
    titles
ORDER BY 3 DESC;


SELECT 
    *
FROM
    titles
ORDER BY 3 , 2 DESC;



SELECT 
    gender
FROM
    employees
ORDER BY gender;

SELECT 
    gender
FROM
    employees
GROUP BY gender;

SELECT 
    gender
FROM
    employees
ORDER BY gender DESC;

SELECT 
    dept_no
FROM
    departments
GROUP BY dept_no;

SELECT 
    dept_no
FROM
    departments
GROUP BY dept_no;

SELECT 
    *
FROM
    employees
GROUP BY gender;

SELECT 
    *
FROM
    dept_manager;

SELECT 
    *
FROM
    dept_manager
GROUP BY dept_no;

select sum(salary) from salaries;

select sum(emp_no) from employees;

select max(salary) from salaries;

select min(salary) from salaries;

select sum(salary), emp_no,  from_date from salaries group by from_date;

select avg(salary) , min(salary), max(salary) from salaries;

select 







