-- QUESTIONS AND ANSWER SCRIPT

-- SELECT and SELECT DISTINCT 
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

