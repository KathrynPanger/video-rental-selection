--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, last_name, first_namke, sex, salaries.salary FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp_no, first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1985-12-31' AND '1987-01-01';

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.

SELECT dept_manager.emp_no, employees.last_name, employees.first_name, departments.dept_no, departments.dept_name FROM dept_manager
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments
ON dept_manager.dept_no=departments.dept_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no,last_name, first_name, departments.dept_name FROM departments
INNER JOIN dept_emp on departments.dept_no=dept_emp.dept_no
INNER JOIN employees on dept_emp.emp_no= employees.emp_no]

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM employees
WHERE first_name='Hercules' AND last_name ILIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,last_name, first_name, departments.dept_name FROM departments
INNER JOIN dept_emp on departments.dept_no=dept_emp.dept_no
INNER JOIN employees on dept_emp.emp_no= employees.emp_no
WHERE dept_name='Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,last_name, first_name, departments.dept_name FROM departments
INNER JOIN dept_emp on departments.dept_no=dept_emp.dept_no
INNER JOIN employees on dept_emp.emp_no= employees.emp_no
WHERE dept_name='Sales' OR dept_name='Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, count(last_name) from employees 
GROUP BY last_name 
ORDER BY last_name DESC