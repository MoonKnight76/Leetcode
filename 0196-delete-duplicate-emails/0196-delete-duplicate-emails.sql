# Write your MySQL query statement below
DELETE FROM person where id in(
with cte as(
SELECT email, max(id) id
from Person
group by email
having count(email)>1
)
SELECT id from cte)
