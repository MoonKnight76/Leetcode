# Write your MySQL query statement below
Select user_id ,concat(upper(substring(name,1,1)), lower(substring(name,2,length(name)))) name
from users
order by 1