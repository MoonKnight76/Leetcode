# Write your MySQL query statement below
select name from SalesPerson
where sales_id NOT IN(
SELECT s.sales_id
from Orders o
left JOIN Company c
on o.com_id=c.com_id
LEFT JOIN SalesPerson s
on o.sales_id=s.sales_id
WHERE TRIM(lower(c.name))='red' 
) 
