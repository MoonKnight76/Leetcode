# Write your MySQL query statement below

SELECT activity_date day, count(distinct user_id) active_users 
from activity
where (activity_type is not null or activity_type <> '')
and activity_date between (date_sub('2019-07-27', interval 30 DAY)) and '2019-07-27'
group by 1