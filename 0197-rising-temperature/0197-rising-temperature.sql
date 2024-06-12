# Write your MySQL query statement below
WITH CTE AS(
SELECT * , 
DATE_ADD(recordDate, Interval -1 day) as yesterday_dt,
LAG(recordDate) over(order by recordDate) prev_recordDate,
LAG(temperature) over(order by recordDate) prev_temp
FROM Weather
)

SELECT id FROM CTE
where yesterday_dt=prev_recordDate
and temperature > prev_temp