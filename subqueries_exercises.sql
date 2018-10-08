use employees;


select * from employees
where emp_no = 101010;
-- Find all the employees with the same hire date as employee 101010 using a sub-query. 69 Rows


Select concat(first_name, ' ', last_name) as "Employes with the same hire date"
from employees
where hire_date = (
  select hire_date
  from employees
  where emp_no = 101010
);


-- Find all the titles held by all employees with the first name Aamod. 314 total titles, 6 unique titles

select distinct title
 from titles where emp_no in (
  select emp_no from employees
  where first_name = 'Aamod'
);


-- Find all the current department managers that are female.

select first_name, last_name
from employees
where gender ='F'
and emp_no in (
  select emp_no
  from dept_manager
  where to_date > now()
);

-- Find all the department names that currently have female managers.


select dept_name
from departments
where dept_no IN (
  select dept_no
  from dept_manager
  where to_date > now()
  and emp_no in (
  from employees
  where gender ='F'
  )
);


-- Find the first and last name of the employee with the highest salary.

select first_name, last_name
from employees
where emp_no = (
select emp_no
from salaries
where salary in (
select max(salary)
from salaries
)
);

)limit 1;

