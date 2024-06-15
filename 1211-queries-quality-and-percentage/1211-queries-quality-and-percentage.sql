# Write your MySQL query statement below
SELECT query_name, round((sum(ratio)/sum(cnt)),2) as quality , 
COALESCE(round((sum(lesser)/sum(cnt)) * 100,2),0) poor_query_percentage 
FROM(
SELECT query_name,(rating/position) ratio, 
case when rating < 3 then 1 else NULL end as lesser, 
1 as cnt 
FROM Queries
where query_name is not null
) a  group by 1
