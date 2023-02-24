CREATE TABLE departments(
	dept_no VARCHAR (10) PRIMARY KEY,
	dept_name VARCHAR (50)
);

--DROP TABLE departments;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR (10),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--DROP TABLE dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no INT NOT NULL PRIMARY KEY
	--FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--DROP TABLE dept_manager;

CREATE TABLE titles(
	title_id VARCHAR(20) PRIMARY KEY,
	title VARCHAR(30)
);

--DROP TABLE titles;

CREATE TABLE employees(
	emo_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(20),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(3),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--DROP TABLE employees;

CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL
);

--DROP TABLE salaries;
