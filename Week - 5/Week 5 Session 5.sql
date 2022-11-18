use employees;
select * from dept_manager;

select count(emp_no) from employees;

select count(emp_no) from dept_manager;

select count(emp_no) from dept_emp;

select count(distinct dept_no ) from dept_manager;

select count(distinct dept_no ) from dept_emp;

select count(distinct gender ) from employees;

select group_concat(dept_name) from departments;

select group_concat(first_name) from employees;

select group_concat(title) from titles;

select group_concat(dept_name order by dept_name desc) from departments;

select group_concat(title order by title desc) from titles;

select group_concat(title order by title desc separator '...') from titles;


select group_concat(title order by title desc separator '*') from titles;


select emp_no, to_date , stddev(salary), stddev_samp(salary) from salaries group by to_date;

select to_date, variance(salary), var_samp(salary) from salaries group by to_date;

 
select  'apple' , 'orange' union  select 'apple' ,'orange';






