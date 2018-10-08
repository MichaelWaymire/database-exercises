use employees;

SELECT DISTINCT count(title), title FROM titles GROUP BY title;


SELECT first_name, last_name FROM employees WHERE last_name like 'e%' and last_name like '%e' GROUP BY first_name, last_name ORDER BY first_name, last_name;

SELECT count(last_name), last_name from employees where last_name like 'E%' and last_name like '%e' group by last_name;

select count(last_name), last_name from employees where last_name like '%q%' and last_name not like '%qu' group by last_name order by last_name;

select count(*), gender from employees where first_name in ('Irena', 'Maya', 'Vidya') group by gender;