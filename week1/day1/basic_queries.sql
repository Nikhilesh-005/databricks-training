-- Basic Queries

-- Q1
SELECT * FROM Employee;

-- Q2
SELECT name, salary FROM Employee;

-- Q3
SELECT * FROM Employee
WHERE age > 30;

-- Q4
SELECT name FROM Department;

-- Q5
SELECT e.name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
WHERE d.name = 'IT';