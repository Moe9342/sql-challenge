DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE department (
			dept_no 		VARCHAR(30) NOT NULL,
			dept_name       VARCHAR(255) NOT NULL,
	        PRIMARY KEY (dept_no)
);
SELECT * FROM department;

CREATE TABLE dept_emp (
     		emp_no 			INTEGER,
			dept_no         VARCHAR(30) NOT NULL,
            from_date       VARCHAR(30),
			to_date         VARCHAR(30),
	        PRIMARY KEY (emp_no, dept_no)
);
SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
			dept_no         VARCHAR(30) NOT NULL,
     		emp_no 			INTEGER,
            from_date       VARCHAR(30),
			to_date         VARCHAR(30),
			FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	        FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager;

CREATE TABLE employees(
			emp_no          INTEGER NOT NULL,
            birth_date      VARCHAR(255),
			first_name      VARCHAR(255) NOT NULL,
			last_name       VARCHAR(255) NOT NULL,
	        gender          VARCHAR(30),
	        hire_date       VARCHAR(30),
			PRIMARY KEY (emp_no)
);
SELECT * FROM employees;

CREATE TABLE salaries(
			emp_no          INTEGER NOT NULL,
            salary          INTEGER NOT NULL,
		    from_date       VARCHAR(30),
			to_date         VARCHAR(30),
			PRIMARY KEY (emp_no)
);
SELECT * FROM salaries;

CREATE TABLE titles(
			emp_no          INTEGER NOT NULL,
            title           VARCHAR(255) NOT NULL,
		    from_date       VARCHAR(30),
			to_date         VARCHAR(30),
			PRIMARY KEY (emp_no,title,from_date)
);
SELECT * FROM titles;