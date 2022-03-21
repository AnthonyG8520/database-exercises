USE employees;

-- SELECT emp_no, first_name, last_name, gender FROM employees
-- WHERE gender = 'M'
--   AND (first_name = 'Irena'
--     OR first_name = 'Vidya'
--     OR first_name = 'Maya')
-- ORDER BY last_name, first_name;
--
-- SELECT emp_no, first_name, last_name FROM employees
-- WHERE last_name LIKE 'E%'
-- ORDER BY emp_no DESC;
--
-- SELECT emp_no, first_name, last_name FROM employees
-- WHERE last_name LIKE '%q%';
--
-- SELECT emp_no, first_name, last_name FROM employees
-- WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
-- ORDER BY emp_no DESC;

--
-- SELECT emp_no, first_name, last_name FROM employees
-- WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';



-- SELECT emp_no, CONCAT (first_name, ' ', last_name) FROM employees
-- WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
-- ORDER BY emp_no DESC;

-- SELECT emp_no, first_name, last_name, birth_date FROM employees
-- WHERE MONTH(birth_date) = '12'
-- AND DAY(birth_date) = '25';

SELECT emp_no, first_name, last_name, birth_date, hire_date, DATEDIFF(CURDATE(), hire_date) FROM employees
WHERE MONTH(birth_date) = '12'
AND DAY(birth_date) = '25'
AND YEAR(hire_date) BETWEEN '1990' AND '2000'
ORDER BY hire_date DESC, birth_date ASC;

