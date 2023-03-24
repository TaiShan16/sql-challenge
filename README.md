# sql-challenge

# Objective
In this project, we performed a research on people whom the company employed during the 1980s and 1990s. We'll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. 

# Data Modeling
We inspect the CSV files, then sketch an Entity Relationship Diagram of the tables by using QuickDBD (https://www.quickdatabasediagrams.com/)
![alt text](https://github.com/TaiShan16/sql-challenge/blob/main/EmployeeSQL/QuickDBD-export%20(1).png)

# Data Engineering
We created a table schema for each of the 6 CSV files. In each table, we specify the data types, primary keys, foreign keys, and other constraints.
After the tables were created, we then imported data from each CSV file into its corresponding SQL tables. Please see Schemas.sql for the tables create.

# Data Analysis
After we complete the Data Engineering process, we then wrote queries to answer the following questions. Please see Employees_Query.sql for the Data Analysis.

List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
