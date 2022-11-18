use employees;
SELECT 
    salary
FROM
    salaries;
SELECT 
    emp_no, salary
FROM
    salaries
WHERE
    salary BETWEEN 100000 AND 1111111;

SELECT 
    emp_no, salary
FROM
    salaries
WHERE
    salary BETWEEN 60117 AND 66961;

SELECT COALESCE(NULL, 500, NULL, 600, 50);

SELECT COALESCE(781, 500, NULL, 600, 50);

SELECT COALESCE(NULL, NULL, NULL, 600, 50);

SELECT GREATEST(781, 500, NULL, 600, 50);

SELECT GREATEST(781, 500, 12, 600, 50);

SELECT 
    GREATEST(12, emp_no, salary)
FROM
    salaries;

SELECT LEAST(781, 500, NULL, 600, 50);

SELECT LEAST(781, 500, 12, 600, 50);

SELECT 
    LEAST(11728, emp_no, salary)
FROM
    salaries;
use employees;
SELECT 
    emp_no, salary
FROM
    salaries
WHERE
    salary IN (62102 , 66596, 71096, 75994);

SELECT 100 IS TRUE, 0 IS TRUE;

SELECT 100 IS FALSE, 0 IS FALSE;

SELECT NULL IS UNKNOWN, 100 IS UNKNOWN;




