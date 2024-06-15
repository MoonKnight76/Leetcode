# Write your MySQL query statement below
SELECT product_id,COALESCE(round((sum(total_price)/sum(units)),2),0) average_price  from(
SELECT P.product_id , (U.units * P.price) total_price, U.units
FROM Prices p
LEFT JOIN UnitsSold U
ON P.product_id=U.product_id
and U.purchase_date between start_date and end_date 
) a 
group by 1