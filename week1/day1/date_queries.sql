-- Date Queries

-- Q11
SELECT * FROM Employee
WHERE YEAR(hire_date) = 2020;

-- Q12
SELECT * FROM Employee
WHERE MONTH(hire_date) = 1;

-- Q13
SELECT * FROM Employee
WHERE hire_date < '2019-01-01';

-- Q14
SELECT * FROM Employee
WHERE hire_date >= '2021-03-01';

-- Q15
SELECT * FROM Employee
WHERE hire_date >= CURDATE() - INTERVAL 2 YEAR;