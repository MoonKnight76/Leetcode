SELECT a.name as Employee
FROM Employee a
INNER JOIN Employee b
on a.managerId=b.id
where a.salary > b.salary