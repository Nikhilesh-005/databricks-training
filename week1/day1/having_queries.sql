-- Having Queries

-- Q26
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Q27
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- Q28
SELECT YEAR(hire_date) AS year
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;

-- Q29
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;

-- Q30
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;