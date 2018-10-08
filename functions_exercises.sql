use employees;


select first_name, last_name from employees where  first_name in ('Irena','Vidya', 'Maya') order by last_name;

select emp_no, last_name from employees where last_name like 'E%' order by emp_no;

select hire_date from employees where year(hire_date) like '1990%';

select first_name, birth_date from employees where birth_date like '%-12-25';

select last_name from employees where last_name like  '%q%' and last_name not like '%qu%';

select CONCAT(first_name, ' ', last_name) from employees where last_name like 'E%' and last_name like '%e' limit 10;

select last_name from employees where last_name like 'e%e';


select DCONCAT(first_name, ' ', last_name) hire_date, birth_date from employees where year(hire_date) like '1990%' and birth_date like '%-12-25' order by hire_date DESC;

select  DATEDIFF('1963-01-01', '1959-01-01')  hire_date, birth_date from employees where year(hire_date) like '1990%' and birth_date like '%-12-25' order by hire_date DESC limit 10;
