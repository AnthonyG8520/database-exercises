USE employees;

SELECT CONCAT (employees.first_name, ' ', employees.last_name) AS Department_Manager,
departments.dept_name AS Department_Name
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE YEAR (dept_manager.to_date) = 9999;


SELECT employees.gender, CONCAT (employees.first_name, ' ', employees.last_name) AS Department_Manager,
departments.dept_name AS Department_Name
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE YEAR (dept_manager.to_date) = 9999
AND employees.gender = 'F';


SELECT title , COUNT(title)
FROM titles
JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Customer Service'
AND YEAR (dept_emp.to_date) = 9999
AND YEAR (titles.to_date) = 9999
GROUP BY titles.title;


SELECT departments.dept_name AS Department_Name,
CONCAT (employees.first_name, ' ', employees.last_name) AS Department_Manager,salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE YEAR (dept_manager.to_date) = 9999
AND YEAR (salaries.to_date) = 9999;


