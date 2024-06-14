# Write your MySQL query statement below
SELECT p.project_id , round(avg(experience_years),2) average_years 
from Project p
JOIN Employee e
on p.employee_id = e.employee_id
group by p.project_id
