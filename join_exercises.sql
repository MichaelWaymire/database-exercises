use employees;
SHOW TABLES;
DESCRIBE dept_emp;
DESCRIBE employees;
DESCRIBE titles;
DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE salaries;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

SELECT users.name, roles.name
FROM users
RIGHT JOIN roles on users.role_id = roles.id;
FROM users
join roles on users.role_id = roles.id
GROUP BY roles.name;
TRUNCATE users;



SELECT titles.title, COUNT(titles.title) FROM titles JOIN dept_emp
ON dept_emp.emp_no = titles.emp_no WHERE dept_emp.dept_no = 'd009'
AND dept_emp.to_date LIKE '9999-%' AND titles.to_date LIKE '9999-%'
GROUP BY titles.title;

SELECT concat(departments.dept_name, ' - ', employees.first_name, ' ',
employees.last_name),dept_manager.emp_no FROM employees JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no JOIN departments
on departments.dept_no = dept_manager.dept_no WHERE employees.gender = 'F'
And dept_manager.to_date like '%9999-%';

SELECT concat(employees.first_name, ' ', employees.last_name),
salaries.salary,' ', departments.dept_name FROM employees JOIN salaries
on salaries.emp_no = employees.emp_no
JOIN dept_manager ON dept_manager.emp_no = salaries.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date like '9999-%' AND salaries.to_date LIKE '9999-%';


-- Instructor Example

-- Using the example in the Associative Table Joins section as a guide, write a query
-- that shows each department along with the name of the current manager for that department.


SELECT * FROM dept_manager limit 10;


SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager dm on dm.dept_no = d.dept_no
JOIN employees e on e.emp_no = dm.emp_no
WHERE dm.to_date > now()
ORDER BY d.dept_name;
limit 10;

-- Find the name of all departments currently managed by women.

SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager dm on dm.dept_no = d.dept_no
JOIN employees e on e.emp_no = dm.emp_no
WHERE dm.to_date > now()
AND e.gender = 'F'
ORDER BY d.dept_name;

-- Find the current titles of employees currently working in the Customer Service department.

SELECT t.title, count(t.title)
FROM titles t
JOIN dept_emp de on de.emp_no = t.emp_no
JOIN departments d on d.dept_no = de.dept_no
where t.to_date > now()
and d.dept_name = 'Customer Service'
group by t.title;


-- Find the current salary of all current managers

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary
from departments AS d
join dept_manager dm on dm.dept_no = d.dept_no
join employees e on e.emp_no = dm.emp_no
join salaries s on s.emp_no = e.emp_no
where dm.to_date > now()
and s.to_date > now()
order by d.dept_name;

