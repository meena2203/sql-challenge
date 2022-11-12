# sql-challenge
# Unit 9 Homework: Employee Database

## Assignment Overview

As a new data engineer at Pewlett Hackard, I have been assigned to research on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.

## Methodology
In this assignment, designed the tables to hold data in the CSVs, imported the CSVs into a SQL database, and answered questions about the data. In other words, performed **data modeling**, **data engineering**, and **data analysis**.

### Data Modeling

Inspected the CSVs and sketched out an ERD (Entity Relationship Diagram) of the tables using [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com). After carefull inspection of CSV files, following relationship was established between the tables :
1. Employee : Title = Multiple : One (multiple employees have same title)
2. Employee : Salaries = Multiple : One (Multiple employees have same salary)
3. Employee : Department_Employee = Multiple : One (multiple employees in one department)
4. Employee : Department_Manager = Multiple : One (multiple manager in one department)
5. Departments : Department_Employee = One : Multiple (one department has multiple employees)
6. Departments : Department_Manager = One : Multiple (one department has multiple managers)

![SQL_HW_ERD_image](https://user-images.githubusercontent.com/112845583/201482996-d849e218-d41f-488c-8fc7-22176bb7a003.png)


### Data Engineering

* Used the table schema generated by the ERD (specifying data types, primary keys, foreign keys) to create table for each of the six CSV files [EmployeeSQL/SQL_HW_table_schemata.sql]. 

* Imported each CSV file into the corresponding SQL table. 
[EmployeeSQL/images/table_1.png]
[EmployeeSQL/images/table_2.png]
[EmployeeSQL/images/table_3.png]
[EmployeeSQL/images/table_4.png]
[EmployeeSQL/images/table_5.png]
[EmployeeSQL/images/table_6.png]


### Data Analysis

Following queries were performed on the  SQL tables [EmployeeSQL/SQL_HW_queries.sql]:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.
<img width="443" alt="query_1" src="https://user-images.githubusercontent.com/112845583/201483187-b00fec6d-2279-4f0e-8fe3-7951f12f41d1.png">

2. List first name, last name, and hire date for employees who were hired in 1986.
<img width="295" alt="query_2" src="https://user-images.githubusercontent.com/112845583/201483218-37218732-c794-47b7-a0eb-5fd0b86d6daa.png">

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
<img width="462" alt="query_3" src="https://user-images.githubusercontent.com/112845583/201483252-47041151-2ffe-49da-bc8e-ffd36d3eaee0.png">

4. List the department of each employee with the following information: employee number, last name, first name, and department name.
<img width="389" alt="query_4" src="https://user-images.githubusercontent.com/112845583/201483276-69b69748-d40a-4044-9cad-7618e4875f0c.png">

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
<img width="317" alt="query_5" src="https://user-images.githubusercontent.com/112845583/201483277-a39cc430-a56e-4ac5-88c8-fe19d18bdec5.png">

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
<img width="384" alt="query_6" src="https://user-images.githubusercontent.com/112845583/201483275-3e45e13f-7598-4c38-8fd9-ff675e42a1d1.png">

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
<img width="388" alt="query_7" src="https://user-images.githubusercontent.com/112845583/201483294-38511013-feb8-4a9c-a86a-20fa07c73ae9.png">

8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
<img width="315" alt="query_8" src="https://user-images.githubusercontent.com/112845583/201483298-a6ca6015-40b3-4a98-bb71-2367a4d4d0e9.png">


## Submission

* Created image file of ERD.

* Created a `.sql` file of table schemata.

* Created a `.sql` file of queries.

## References

Mockaroo, LLC. (2021). Realistic Data Generator. [https://www.mockaroo.com/](https://www.mockaroo.com/)

- - -

© 2022 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.

