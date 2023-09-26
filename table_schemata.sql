CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(75),
	PRIMARY KEY (title_id)
);

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR(10),
	birth_date VARCHAR(10),
	first_name VARCHAR(75),
	last_name VARCHAR(75),
	sex VARCHAR(15),
	hire_date VARCHAR(10),
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles (title_id)
);

CREATE TABLE departments(
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(75),
	PRIMARY KEY (dept_no)
);

CREATE TABLE deptemployee(
	emp_no INT,
	dept_no VARCHAR(10),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE deptmanager(
	dept_no VARCHAR(10),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT *
FROM employees;

SELECT *
FROM deptemployee;

SELECT *
FROM deptmanager;

SELECT *
FROM salaries;

SELECT *
FROM departments;

SELECT *
FROM titles;