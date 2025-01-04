-- QUESTIONS AND ANSWER SCRIPT

-- SELECT and SELECT DISTINCT 

/*
Function Explanation
SELECT: Retrieves specific columns or all columns (*) from a table.
SELECT DISTINCT: Retrieves unique values in the specified column(s).
*/
-- Q1: What are all the columns and rows in the employee_demographics table?employee_demographics

SELECT *
FROM employee_demographics;

-- Q1 Answer: employee_id, first_name, last_name, age, gender, birth_date

-- Q2: What are the unique occupations in the employee_salary table?

SELECT DISTINCT occupation
FROM employee_salary;

/* Q2 Answer: 
Deputy Director of Parks and Recreation 
Director of Parks and Recreation
Entrepreneur
Assistant to the Director of Parks and Recreation
Office Manager
Nurse
City Manager
State Auditor
Shoe Shiner and Musician
City Planner
Parks Director
*/

-- Q3: Which departments exist in the parks_departments table?

SELECT DISTINCT department_name
FROM parks_departments;

/* Q3 Answer:
Parks and Recreation
Animal Control
Public Works
Healthcare
Library
Finance
*/

-- WHERE 

/*
Function Explanation
Filters rows based on a condition.
Can use operators like =, >, <, >=, <=, !=, LIKE, etc.
*/

-- Q1: What are the details of employees older than 40 in employee_demographics?

SELECT *
FROM employee_demographics
WHERE age > 40;

/* Q1 Answer 
Leslie
Jerry
Donna
Chris
*/

-- Q2: Which employees in employee_salary earn more than or equal to $60,000?

SELECT * 
FROM employee_salary
WHERE salary >= 60000;

/* Q2 Answer:
Leslie
Ron
Donna
Chris
Ben
Craig
*/

-- Q3: Which parks departments have "Animal" in their name?

SELECT department_name
FROM parks_departments
WHERE department_name like "%animal%";

-- Q3 Answer: Animal Control

-- GROUP BY and ORDER BY

/*
Function Explanation
GROUP BY: Groups rows sharing a value in specific columns, often used with aggregate functions (COUNT, SUM, AVG, etc.).
ORDER BY: Sorts rows in ascending (ASC) or descending (DESC) order based on one or more columns.
*/

-- Q1: What is the average salary for each occupation in employee_salary

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;

-- Q2: How many employees are in each age group (e.g., 20-29, 30-39, etc.) in employee_demographics?

SELECT 
	CASE
		WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        WHEN age >= 60 THEN '60+'
        ELSE 'unknown'
	END AS age_group, 
    COUNT(*) AS employee_count
FROM employee_demographics
GROUP BY age_group
ORDER BY age_group;
        
        

-- Q3: List all employees sorted by their salary in descending order.

SELECT *
FROM employee_salary
ORDER BY salary DESC;

-- HAVING vs WHERE

/*
Function Explanation
WHERE: Filters rows before grouping.
HAVING: Filters grouped results after aggregation.
*/

-- Q1: What is the average salary for occupation with more than or equal to 2 employees?

SELECT occupation, COUNT(occupation) AS employee_count, AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING employee_count >= 2;

/*
Office Manager: 55000.00
*/

-- Q2: Which occupations have an average salary greater than $60,000?

SELECT occupation, AVG(salary) AS avg_salary
FROM employee_salary
GROUP BY occupation
HAVING avg_salary > 60000;

/* Q2 Answer:
Deputy Director of Parks and Recreation
Director of Parks and Recreation
City Manager
State Auditor
Parks Director
*/

-- Q3: How many employees in employee_salary are earning less than $50,000 after grouping by occupation?

SELECT occupation, COUNT(*) AS employee_count 
FROM employee_salary 
WHERE salary < 50000 
GROUP BY occupation;

/* Q3 Answer:
Assistant to the Director of Parks and Recreation
Shoe Shiner and Musician
*/

