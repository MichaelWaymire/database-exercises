use employees;


-- Duplicate the previous query and update it to find all
-- employees whose last name starts and ends with 'E' — 899 rows.
-- Find all employees hired in the 90s and born on Christmas
-- — 362 rows.
-- Find all employees with a 'q' in their last name but not
-- 'qu' — 547 rows.

select first_name from employees where first_name in ('Irena','Vidya') or first_name = 'Maya';

select last_name from employees where last_name like 'E%';

select hire_date from employees where year(hire_date) like '1990%';

select first_name, birth_date from employees where birth_date like '%-12-25';

select last_name from employees where last_name like  '%q%' and last_name not like '%qu%';

select last_name from employees where last_name like 'E%' or last_name like '%e';

select last_name from employees where last_name like 'e%e';


select hire_date, birth_date from employees where year(hire_date) like '1990%' and birth_date like '%-12-25';