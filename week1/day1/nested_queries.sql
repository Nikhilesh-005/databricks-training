-- Nested and Correlated Queries

-- Q46
SELECT *
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

-- Q47
SELECT *
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- Q48
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- Q49
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Q50
SELECT *
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- Q51
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- Q52
SELECT *
FROM Employee
WHERE age > ALL (
    SELECT age
    FROM Employee
    WHERE department_id = 2
);

-- Q53
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- Q54
SELECT *
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Project
    GROUP BY department_id
    HAVING COUNT(*) >= 2
);

-- Q55
SELECT *
FROM Employee
WHERE hire_date = (
    SELECT hire_date
    FROM Employee
    WHERE name = 'Jane Smith'
);