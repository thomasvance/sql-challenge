select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;


select employees.emp_no "Employee Number", last_name "Last Name", first_name "First Name", sex "Sex", salaries.salary "Salary"
from employees
join salaries on employees.emp_no = salaries.emp_no;
--------------------------------------------------------------------------------
select first_name "First Name", last_name "Last Name", hire_date "Date of hire"
from employees
where hire_date like '%1986';
--------------------------------------------------------------------------------
select departments.dept_no "Department Number", departments.dept_name "Department Name", employees.emp_no "Employee Number", last_name "Last Name", first_name "First Name"
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no;
--------------------------------------------------------------------------------
select dept_emp.dept_no "Department Number", employees.emp_no "Employee Number", last_name "Last Name", first_name "First Name", departments.dept_name "Department Name"
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no;
--------------------------------------------------------------------------------
select first_name "First Name", last_name "Last Name", sex "Sex"
from employees
where first_name ='Hercules' and last_name like 'B%';
--------------------------------------------------------------------------------
select departments.dept_name "Department Name", employees.emp_no "Employee Number", last_name "Last Name", first_name "First Name"
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';
--------------------------------------------------------------------------------
select departments.dept_name "Department Name", employees.emp_no "Employee Number", last_name "Last Name", first_name "First Name"
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name in ('Sales','Development');
--------------------------------------------------------------------------------
SELECT last_name, COUNT(last_name) AS "Frequency count"
FROM employees
GROUP BY last_name
ORDER BY "Frequency count" DESC;




