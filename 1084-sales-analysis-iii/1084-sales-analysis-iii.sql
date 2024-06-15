# Write your MySQL query statement below
SELECT p.product_id product_id, p.product_name product_name 
FROM Product p
JOIN Sales s
on p.product_id=s.product_id
group by 1,2
having min(s.sale_date) >= '2019-01-01' and max(s.sale_date) <= '2019-03-31'