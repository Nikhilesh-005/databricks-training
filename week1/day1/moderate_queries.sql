-- Combined Moderate Difficulty Queries

-- Q56
SELECT SUM(salary)
FROM Employee
WHERE YEAR(hire_date) = 2020;

-- Q57
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC;

-- Q58
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 1 AND AVG(salary) > 55000;

-- Q59
SELECT *
FROM Employee
WHERE hire_date >= CURDATE() - INTERVAL 2 YEAR
ORDER BY hire_date;

-- Q60
SELECT department_id, COUNT(*) AS total_employees,
AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Q61
SELECT name, salary
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- Q62
SELECT name
FROM Employee
WHERE hire_date = (
    SELECT MIN(hire_date)
    FROM Employee
);

-- Q63
SELECT d.name, COUNT(p.project_id) AS total_projects
FROM Department d
JOIN Project p
ON d.department_id = p.department_id
GROUP BY d.name
ORDER BY total_projects;

-- Q64
SELECT e.name, e.salary, e.department_id
FROM Employee e
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- Q65
SELECT name, salary
FROM Employee e
WHERE age > (
    SELECT AVG(age)
    FROM Employee
    WHERE department_id = e.department_id
);