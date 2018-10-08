use employees;

select concat(emp_no ' - ', last_name, ' ', first_name) as 'Full Names', birth_date as 'DOB' from employees limit 10;