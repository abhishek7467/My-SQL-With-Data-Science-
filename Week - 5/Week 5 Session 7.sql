SELECT 'apple', 'orabge' 
UNION SELECT 'cat', 'dog';


SELECT 'apple', 'orabge', 'cat' 
UNION SELECT 'cat', 'dog';

SELECT 
    *
FROM
    dept_manager
WHERE
    dept_no = 'd001';
SELECT 
    *
FROM
    dept_manager
WHERE
    dept_no = 'd005';

SELECT 
    *
FROM
    dept_manager
WHERE
    dept_no = 'd001' 
UNION SELECT 
    *
FROM
    dept_manager
WHERE
    dept_no = 'd005';

SELECT 
    *
FROM
    dept_manager
WHERE
    dept_no = 'd005' 
UNION SELECT 
    *
FROM
    dept_manager
WHERE
    dept_no = 'd001';

SELECT 
    *
FROM
    dept_manager
WHERE
    dept_no = 'd001';

SELECT 
    *
FROM
    departments
WHERE
    dept_no = 'd005';

SELECT 
    *
FROM
    dept_manager
WHERE
    dept_no = 'd001' 
UNION SELECT 
    *
FROM
    departments
WHERE
    dept_no = 'd005';

SELECT 
    *
FROM
    dept_manager
WHERE
    dept_no = 'd001';

SELECT 
    *
FROM
    departments
WHERE
    dept_no = 'd005';

SELECT 
    *
FROM
    dept_emp 
UNION SELECT 
    *
FROM
    dept_manager;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = (SELECT 
            emp_no
        FROM
            dept_manager
        WHERE
            dept_no = 'd001'
                AND from_date = '1985-01-01');

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 110022;

SELECT 
    emp_no
FROM
    dept_manager
WHERE
    dept_no = 'd001'
        AND from_date = '1985-01-01';

SELECT 
    emp_no, salary, from_date
FROM
    salaries
WHERE
    from_date > (SELECT 
            hire_date
        FROM
            employees
        WHERE
            emp_no = 10551);

SELECT 
    hire_date
FROM
    employees
WHERE
    emp_no = 10551;

SELECT 
    COUNT(emp_no)
FROM
    dept_manager;

SELECT 
    *
FROM
    employees
WHERE
    emp_no > (SELECT 
            emp_no
        FROM
            dept_manager);

SELECT 
    *
FROM
    employees
WHERE
    emp_no > ANY (SELECT 
            emp_no
        FROM
            dept_manager);

SELECT 
    *
FROM
    employees
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            dept_manager);


SELECT 
    COUNT(*)
FROM
    employees
WHERE
    emp_no > (SELECT 
            emp_no
        FROM
            dept_manager);


SELECT 
    COUNT(*)
FROM
    employees
WHERE
    emp_no > ANY (SELECT 
            emp_no
        FROM
            dept_manager);

SELECT 
    COUNT(*)
FROM
    employees
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            dept_manager);

SELECT 
    *
FROM
    employees
WHERE
    emp_no > ALL (SELECT 
            emp_no
        FROM
            dept_manager);

SELECT 
    COUNT(*)
FROM
    employees
WHERE
    emp_no > ALL (SELECT 
            emp_no
        FROM
            dept_manager);

SELECT 
    *
FROM
    dept_emp
WHERE
    (emp_no , dept_no) = (SELECT 
            emp_no, dept_no
        FROM
            dept_manager
        WHERE
            emp_no = 110022);
            
SELECT 
    emp_no, dept_no
FROM
    dept_manager
WHERE
    emp_no = 110022;
 
SELECT 
    *
FROM
    dept_emp
WHERE
    (emp_no , dept_no) IN (SELECT 
            emp_no, dept_no
        FROM
            dept_manager);
 
SELECT 
    *
FROM
    employees
WHERE
    EXISTS( SELECT 
            emp_no
        FROM
            dept_manager);

SELECT 
    *
FROM
    employees
WHERE
    emp_no = ANY (SELECT 
            emp_no
        FROM
            dept_manager
        WHERE
            employees.emp_no = dept_manager.emp_no);


SELECT 
    count(*)
    
FROM
    employees
WHERE
    emp_no = ANY (SELECT 
            emp_no
        FROM
            dept_manager
        WHERE
            employees.emp_no = dept_manager.emp_no);

SELECT 
    *
    
FROM
    employees
WHERE
    emp_no = ALL (SELECT 
            emp_no
        FROM
            dept_manager
        WHERE
            employees.emp_no = dept_manager.emp_no);

SELECT 
    count(*)
    
FROM
    employees
WHERE
    emp_no = ALL (SELECT 
            emp_no
        FROM
            dept_manager
        WHERE
            employees.emp_no = dept_manager.emp_no);





