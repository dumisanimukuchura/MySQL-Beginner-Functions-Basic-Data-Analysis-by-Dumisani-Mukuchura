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




