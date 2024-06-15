# Write your MySQL query statement below

SELECT name, coalesce(sum(distance),0) travelled_distance 
from Users u
LEFT JOIN Rides r
on u.id=r.user_id
group by 1
order by 2 desc , 1 asc