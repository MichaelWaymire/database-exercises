use employees;

SELECT DISTINCT title FROM titles;


Select DISTINCT last_name from employees order by last_name DESC limit 10;

select first_name, last_name from employees where birth_date like '%-12-25' limit 5 offset 5;
