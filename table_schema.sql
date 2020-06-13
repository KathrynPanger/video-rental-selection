--one to one
CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR);
	
--one to many
CREATE TABLE employees(
	emp_no int PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_namke VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));
	
--one to many	
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary 	INT );

--one to many
CREATE TABLE dept_manager(
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR);


--one to one
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR);
	
--many to many
CREATE TABLE dept_emp(
	dept_no VARCHAR,
	emp_no INT PRIMARY KEY, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

	