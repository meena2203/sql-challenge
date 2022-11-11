-- DATA QUERIES (DATA ANALYSIS)

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
-- "Select" the asked columns from Employee (alias e) and Salaries (alias s) table. "Join" (default inner join) the selected columns "using" (drops the duplicate joining column) "emp_no" column (common to both tables). 
Select e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
From "Employee" as e
Join "Salaries" as s using (emp_no)
	

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- "Select" the asked columns from Employee table and use "where", "between", and "and" for conditioning (1986) the query. "Order" the query by hire date for easy readability.
Select first_name, last_name, hire_date
From "Employee"
Where 
    hire_date between '1986-01-01' 
    and '1986-12-31'
Order by hire_date


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- "Select" the asked columns from Departments (alias d), Department_Manager (alias dm), and Employee (alias e) table. "Join" (default inner join) the selected columns "using" (drops the duplicate joining column) "dept_no" column (common to d and dm) and "emp_no" column (common to dm and e).    
Select d.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name, 
	e.first_name
From "Departments" as d
Join "Department_Manager" as dm using (dept_no)
Join "Employee" as e using (emp_no)

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
-- "Select" the asked columns from Employee (alias e) and Departments (alias d) table. 
-- Since Employee and Department table does not have a shared column, Department_Employee (alias de) table is used as a connector - shares "emp_no" column with e and "dept_no" column with d table.    
Select e.emp_no, 
	e.last_name, 
	e.first_name,
	d.dept_name
From "Employee" as e
Join "Department_Employees" as de using (emp_no)
Join "Departments" as d using (dept_no)


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- "Select" the asked columns from Employee table and use "where" and "like" for conditioning the query. "Order" the query by last_name for easy readability.
Select first_name, last_name, sex
From "Employee"
Where 
    first_name =  'Hercules'
    and last_name like 'B%'
Order by last_name


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- "Select" the asked columns from Employee (alias e) and Departments (alias d) table. 
-- Since Employee and Department table does not have a shared column, Department_Employee (alias de) table is used as a connector - shares "emp_no" column with e and "dept_no" column with d table. 
-- "Where" is used for conditioning the query to sales department.
Select e.emp_no, 
	e.last_name, 
	e.first_name,
	d.dept_name
From "Employee" as e
Join "Department_Employees" as de using (emp_no)
Join "Departments" as d using (dept_no)
Where dept_name = 'Sales'


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- "Select" the asked columns from Employee (alias e) and Departments (alias d) table. 
-- Since Employee and Department table does not have a shared column, Department_Employee (alias de) table is used as a connector - shares "emp_no" column with e and "dept_no" column with d table. 
-- "Where" and "Or" is used for conditioning the query to sales or development department.
Select e.emp_no, 
	e.last_name, 
	e.first_name,
	d.dept_name
From "Employee" as e
Join "Department_Employees" as de using (emp_no)
Join "Departments" as d using (dept_no)
Where dept_name = 'Sales'
	Or dept_name = 'Development'


-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
-- "Select" the asked columns from Employee (alias e) table. 
-- "Group by" with "count" (aggregate function) to get the the frequency count of each last name. "Order by" the query with "descending" frequency count.  
Select e.last_name, 
	Count(e.last_name) as frequency_count
From "Employee" as e
Group by e.last_name
Order by frequency_count desc
