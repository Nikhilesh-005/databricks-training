-- Q56
select sum(salary) from Employee
where year(hire_date)=2020;

--Q57
SELECT department_id,avg(salary) as avg_salary from Employee
GROUP BY department_id
order by avg_salary desc;

-- q58
select department_id from Employee group by department_id
having count(*)>1 and avg(salary)>55000;

--Q59
select * from Employee
where hire_date >= curdate()-interval 2 year
order by hire_date;

--Q60
SELECT department_id,count(*) as total_employees,
avg(salary) as avg_salary from Employee
group by department_id
having count(*)>2;

--Q61
select name,salary from Employee e
where salary>( select avg(salary)
from Employee where department_id=e.department_id
);

--Q62
select name from Employee
where hire_date=( select min(hire_date)
from Employee
);

--Q63
select d.name,count(p.project_id) as total_projects
from Department d join Project p
on d.department_id=p.department_id
group by d.name
order by total_projects;

--Q64
select e.name,e.salary,e.department_id
from Employee e
where salary=(select max(salary)
from Employee where department_id=e.department_id
);

--Q65
select name,salary from Employee e
where age>(select avg(age) from Employee
where department_id=e.department_id
);
