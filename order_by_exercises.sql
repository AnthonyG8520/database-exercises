USE employees;

SELECT emp_no, first_name, last_name, gender FROM employees
WHERE gender = 'M'
AND (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
ORDER BY last_name, first_name;

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE '%q%';

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';