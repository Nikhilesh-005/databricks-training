-- Order By Queries

-- Q31
SELECT * FROM Employee
ORDER BY salary ASC;

-- Q32
SELECT * FROM Employee
ORDER BY age DESC;

-- Q33
SELECT * FROM Employee
ORDER BY hire_date ASC;

-- Q34
SELECT * FROM Employee
ORDER BY department_id, salary;

-- Q35
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary;