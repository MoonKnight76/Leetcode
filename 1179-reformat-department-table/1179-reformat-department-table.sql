# Write your MySQL query statement below

SELECT id ,
 max(CASE WHEN month='Jan' then revenue else null end) as Jan_Revenue 
,max(CASE WHEN month='Feb' then revenue else null end) as Feb_Revenue
,max(CASE WHEN month='Mar' then revenue else null end) as Mar_Revenue
,max(CASE WHEN month='Apr' then revenue else null end) as Apr_Revenue
,max(CASE WHEN month='May' then revenue else null end) as May_Revenue
,max(CASE WHEN month='Jun' then revenue else null end) as Jun_Revenue
,max(CASE WHEN month='Jul' then revenue else null end) as Jul_Revenue 
,max(CASE WHEN month='Aug' then revenue else null end) as Aug_Revenue
,max(CASE WHEN month='Sep' then revenue else null end) as Sep_Revenue
,max(CASE WHEN month='Oct' then revenue else null end) as Oct_Revenue
,max(CASE WHEN month='Nov' then revenue else null end) as Nov_Revenue
,max(CASE WHEN month='Dec' then revenue else null end) as Dec_Revenue
from Department
group by id