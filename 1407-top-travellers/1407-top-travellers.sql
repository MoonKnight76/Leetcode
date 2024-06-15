# Write your MySQL query statement below
SELECT name, travelled_distance from(
SELECT u.id,name, coalesce(sum(distance),0) travelled_distance 
from Users u
LEFT JOIN Rides r
on u.id=r.user_id
group by 1,2
order by 3 desc , 2 asc) a