# Write your MySQL query statement below
select machine_id, round(sum(duration)/ count(duration),3) processing_time 
from(
SELECT machine_id, process_id, max(timestamp)-min(timestamp) duration
from Activity
group by 1,2
order by 1,2
) a
group by 1