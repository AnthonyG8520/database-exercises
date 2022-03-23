USE employees;

SELECT CONCAT (employees.first_name, ' ', employees.last_name), departments.dept_name
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE YEAR (dept_manager.to_date) = 9999;

SELECT employees.gender, CONCAT (employees.first_name, ' ', employees.last_name), departments.dept_name
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE YEAR (dept_manager.to_date) = 9999
AND employees.gender = 'F';


