-- Group By Queries

-- Q21
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;

-- Q22
SELECT department_id, AVG(age) AS avg_age
FROM Employee
GROUP BY department_id;

-- Q23
SELECT YEAR(hire_date) AS year, COUNT(*) AS total_employees
FROM Employee
GROUP BY YEAR(hire_date);

-- Q24
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;

-- Q25
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;