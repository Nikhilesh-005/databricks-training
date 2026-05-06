-- Aggregate Queries

-- Q16
SELECT SUM(salary) AS total_salary
FROM Employee;

-- Q17
SELECT AVG(salary) AS avg_salary
FROM Employee;

-- Q18
SELECT MIN(salary) AS min_salary
FROM Employee;

-- Q19
SELECT department_id, COUNT(*) AS total_employees
FROM Employee
GROUP BY department_id;

-- Q20
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;