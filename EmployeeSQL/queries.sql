--List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emo_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON(e.emo_no = s.emp_no);

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01';

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT n.dept_no, d. dept_name, e.emo_no, e.last_name, e.first_name
FROM dept_manager n
JOIN departments d
ON(n.dept_no = d.dept_no)
JOIN employees e
ON(n.emp_no = e.emo_no);

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d.dept_no, e.emo_no, e.last_name, e.first_name, n.dept_name
FROM dept_emp d
JOIN employees e
ON(d.emp_no = e.emo_no)
JOIN departments n
ON(d.dept_no = n.dept_no);

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT emo_no, last_name, first_name
FROM employees
WHERE emo_no IN (
	SELECT emp_no 
	FROM dept_emp
	WHERE dept_no = 'd007'
);

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emo_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp n
ON(e.emo_no = n.emp_no)
JOIN departments d
ON(n.dept_no = d.dept_no)
WHERE d.dept_no in ('d005', 'd007');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)


