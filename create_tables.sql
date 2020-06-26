--one to one
CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR)
	
--one to many
CREATE TABLE employees(
	emp_no int PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_namke VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE)
	
--one to many	
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary 	INT)

--many to many
CREATE TABLE dept_emp(
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR)

--one to many
CREATE TABLE dept_manager(
	emp_no INT PARIMARY KEY,
	dept_no VARCHAR)

--one to one
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR)
	