-- Join Queries

-- Q36
SELECT e.name, d.name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;

-- Q37
SELECT p.name, d.name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

-- Q38
SELECT e.name, p.name
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;

-- Q39
SELECT e.name, d.name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

-- Q40
SELECT d.name, e.name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id;

-- Q41
SELECT e.name
FROM Employee e
LEFT JOIN Project p
ON e.department_id = p.department_id
WHERE p.project_id IS NULL;

-- Q42
SELECT e.name, COUNT(p.project_id) AS project_count
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id
GROUP BY e.name;

-- Q43
SELECT d.name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

-- Q44
SELECT e2.name
FROM Employee e1
JOIN Employee e2
ON e1.department_id = e2.department_id
WHERE e1.name = 'John Doe';

-- Q45
SELECT d.name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY d.name
ORDER BY AVG(e.salary) DESC
LIMIT 1;