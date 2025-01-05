# MySQL-Beginner-Functions-Basic-Data-Analysis-by-Dumisani-Mukuchura

## Contact Details
- Email: dumisanimukuchura@gmail.com
- LinkedIn: https://www.linkedin.com/in/dumisani-maxwell-mukuchura-4859b7170/

# MySQL for Data Analysis Project 1: Beginner Functions

## Project Overview
This project focuses on learning and applying foundational SQL functions for data analysis. Using a fictional database, `Parks_and_Wildlife`, the project explores essential SQL operations like `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, and more. The dataset includes tables such as `employee_demographics`, `employee_salary`, and `parks_departments`.

## Objectives
- Understand and practice beginner SQL functions.
- Perform queries to extract and analyze data from structured databases.
- Answer business-related questions using SQL.

---

## Dataset Description
The project is built on a fictional database, `Parks_and_Wildlife`, which contains the following tables:

### 1. `employee_demographics`
| Column       | Type        | Description                          |
|--------------|-------------|--------------------------------------|
| `employee_id`| INT         | Unique ID for each employee          |
| `first_name` | VARCHAR(50) | Employee's first name                |
| `last_name`  | VARCHAR(50) | Employee's last name                 |
| `age`        | INT         | Employee's age                      |
| `gender`     | VARCHAR(10) | Employee's gender                   |
| `birth_date` | DATE        | Employee's date of birth            |

### 2. `employee_salary`
| Column       | Type        | Description                          |
|--------------|-------------|--------------------------------------|
| `employee_id`| INT         | Unique ID linking to demographics    |
| `first_name` | VARCHAR(50) | Employee's first name                |
| `last_name`  | VARCHAR(50) | Employee's last name                 |
| `occupation` | VARCHAR(50) | Job title                            |
| `salary`     | INT         | Annual salary                        |
| `dept_id`    | INT         | Department ID (foreign key)          |

### 3. `parks_departments`
| Column           | Type        | Description                          |
|------------------|-------------|--------------------------------------|
| `department_id`  | INT         | Unique department ID                 |
| `department_name`| VARCHAR(50) | Name of the department               |

---

## Key Functions Explored

### SELECT and SELECT DISTINCT
- Retrieves specific columns or all columns from a table.
- Retrieves unique values in specified columns.

### WHERE
- Filters rows based on specified conditions (e.g., `age > 40`).

### GROUP BY and ORDER BY
- Groups rows based on column values and aggregates data.
- Sorts query results in ascending or descending order.

### HAVING and WHERE
- `WHERE` filters rows before grouping.
- `HAVING` filters grouped results after aggregation.

### LIMIT and Aliasing
- Limits the number of rows returned in the query results.
- Aliases (`AS`) provide temporary names for columns or tables.

---

## Questions and Analysis

### SELECT and SELECT DISTINCT
1. What are all the columns and rows in the `employee_demographics` table?
2. What are the unique occupations in the `employee_salary` table?
3. Which departments exist in the `parks_departments` table?

### WHERE
1. What are the details of employees older than 40 in `employee_demographics`?
2. Which employees in `employee_salary` earn more than or equal to $60,000?
3. Which parks departments have "Animal" in their name?

### GROUP BY and ORDER BY
1. What is the average salary for each occupation in `employee_salary`?
2. How many employees are in each age group (e.g., 20-29, 30-39, etc.) in `employee_demographics`?
3. List all employees sorted by their salary in descending order.

### HAVING and WHERE
1. What is the average salary for occupations with more than 2 employees?
2. Which occupations have an average salary greater than $60,000?
3. How many employees in `employee_salary` earn less than $50,000 after grouping by occupation?

### LIMIT and Aliasing
1. Show the top 3 highest-earning employees in `employee_salary`.
2. Rename the `employee_salary` table as `salaries` and retrieve the first 5 rows.
3. Display only the first and last names from `employee_demographics` with column headers as `First Name` and `Last Name`.

---

## How to Run the Project
1. **Set Up the Database**:
   - Create the database using the provided SQL script.
   - Populate the tables with the data specified in the script.

2. **Run Queries**:
   - Use MySQL Workbench or any SQL client.
   - Copy and paste the provided SQL queries to answer the listed questions.

3. **Explore Further**:
   - Modify queries or add new ones to deepen your understanding of SQL.

---

## Folder Structure

MySQL-Beginner-Functions/ 
├── sql_scripts/ │ └── parks_and_wildlife.sql # SQL script for database setup 
├── analysis/ │ └── questions_and_queries.sql # SQL queries and answers 
├── README.md
