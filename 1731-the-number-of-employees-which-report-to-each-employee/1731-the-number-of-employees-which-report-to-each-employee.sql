# Write your MySQL query statement below
SELECT a.employee_id, a.name, count(b.reports_to) as reports_count, 
ceil(sum(b.age)/count(b.age)) average_age
from Employees a
JOIN Employees b
ON a.employee_id=b.reports_to
group by 1,2
order by 1