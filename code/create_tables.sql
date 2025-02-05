--one to one
CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR);
	
--one to many
CREATE TABLE employees(
	emp_no int PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));
	
--one to many	
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary 	INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

--one to many
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));


--one to one
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR);
	
--many to many
CREATE TABLE dept_emp2(
	emp_no INT,
	dept_no VARCHAR, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no));
