-- table schema

--Drop all tables
DROP TABLE IF EXISTS departments
DROP TABLE IF EXISTS titles
DROP TABLE IF EXISTS employees
DROP TABLE IF EXISTS dept_emp
DROP TABLE IF EXISTS dept_managers
DROP TABLE IF EXISTS salaries


-- Create table departments



CREATE TABLE departments (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from departments;

--Create table titles

CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY(title_id)
);

select * from titles


-- Create table employees


CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

select * from employees


--Create table dept_emp


CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp;


-- Create table dept_managers


CREATE TABLE dept_managers (
 dept_no VARCHAR (10),
 emp_no INT,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers


--Create table salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries





