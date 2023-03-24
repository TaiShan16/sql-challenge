-- Drops people table if it exists
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;

-- 1.creates titles table
CREATE TABLE titles (
	title_id VARCHAR (5) NOT NULL PRIMARY KEY,
	title VARCHAR (50) NOT NULL	
);

SELECT * FROM titles;

-- 2.creates employees table
CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_title_id)REFERENCES titles(title_id),
	birth_date VARCHAR(10) NOT NULL, 
	first_name VARCHAR(20)NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL	
);

SELECT * FROM employees;

-- 3.creates departments table
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

SELECT * FROM departments;

-- 4.creates dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;

-- 5.creates dept_emp table
CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(4)NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-- 6.creates salaries table
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER 
);

SELECT * FROM salaries;
