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


SELECT title, COUNT(title)
FROM titles t
JOIN dept_emp de ON t.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
GROUP BY t.title;

