-- TABLE SCHEMATA (DATA ENGINEERING)

--TABLE 1
-- To drop a table after verifying that it exists in the database
Drop table if exists "Employee"

-- Create "Employee" table
CREATE TABLE "Employee" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "emp_no"
     )
);

-- Import CSV file into the corresponding SQL table and View the table data
Select * from "Employee"


--TABLE 2
-- To drop a table after verifying that it exists in the database
Drop table if exists "Title"

-- Create "Title" table
CREATE TABLE "Title" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_id"
     )
);

-- Import CSV file into the corresponding SQL table and View the table data
Select * from "Title"


--TABLE 3
-- To drop a table after verifying that it exists in the database
Drop table if exists "Salaries"

-- Create "Salaries" table
CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL
);

-- Import CSV file into the corresponding SQL table and View the table data
Select * from "Salaries"


--TABLE 4
-- To drop a table after verifying that it exists in the database
Drop table if exists "Departments"

-- Create "Departments" table
CREATE TABLE "Departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

-- Import CSV file into the corresponding SQL table and View the table data
Select * from "Departments"


--TABLE 5
-- To drop a table after verifying that it exists in the database
Drop table if exists "Department_Employees"

-- Create "Department_Employees" table
CREATE TABLE "Department_Employees" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar   NOT NULL
);

-- Import CSV file into the corresponding SQL table and View the table data
Select * from "Department_Employees"


--TABLE 6
-- To drop a table after verifying that it exists in the database
Drop table if exists "Department_Manager"

-- Create "Department_Manager" table
CREATE TABLE "Department_Manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL
);

-- Import CSV file into the corresponding SQL table and View the table data
Select * from "Department_Manager"


