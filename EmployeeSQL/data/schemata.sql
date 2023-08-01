-- Create Tables and check data import
CREATE TABLE departments (
    dept_no VARCHAR(50) NOT NULL,
    dept_name varchar(50) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT *
FROM departments;


CREATE TABLE titles (
    title_id VARCHAR(50) NOT NULL,
    title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT *
FROM titles;


CREATE TABLE employees (
    emp_no INT,
    emp_title_id VARCHAR(50) NOT NULL,
    birth_date VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date VARCHAR(50) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

SELECT *
FROM employees;


CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT *
FROM dept_emp;


CREATE TABLE dept_manager (
    dept_no VARCHAR(50) NOT NULL,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

SELECT *
FROM dept_manager;


CREATE TABLE salaries (
    emp_no INT,
    salary INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT *
FROM salaries;