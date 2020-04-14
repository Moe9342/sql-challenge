-- 1.List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM salaries
LEFT JOIN employees ON
employees.emp_no = salaries.emp_no;

-- 2.List employees who were hired in 1986.

SELECT employees.first_name,employees.last_name
FROM employees 
WHERE employees.hire_date LIKE '1986%';

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, 
--  last name, first name, and start and end employment dates.
SELECT department.dept_no, department.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, salaries.from_date, salaries.to_date
FROM dept_manager 
JOIN department
ON   dept_manager.dept_no = department.dept_no
JOIN employees
ON   dept_manager.emp_no = employees.emp_no 
JOIN salaries
ON   dept_manager.emp_no = salaries.emp_no;

-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.first_name, employees.last_name, department.dept_name  
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN department 
ON  dept_emp.dept_no = department.dept_no;

-- 5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.first_name, employees.last_name, department.dept_name  
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN department 
ON  dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales';

-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.first_name, employees.last_name, department.dept_name  
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN department 
ON  dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development' 

-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(last_name) total_count
FROM employees
GROUP BY last_name;

