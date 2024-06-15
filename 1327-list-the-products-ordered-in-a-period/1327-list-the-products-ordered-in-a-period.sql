# Write your MySQL query statement below
SELECT p.product_name ,sum(o.unit) unit    
from products p
join orders o
on p.product_id=o.product_id
where order_date between '2020-02-01' and '2020-02-29'
group by 1
having  unit >= 100