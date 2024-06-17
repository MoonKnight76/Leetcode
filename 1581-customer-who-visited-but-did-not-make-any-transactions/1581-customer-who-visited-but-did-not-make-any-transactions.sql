# Write your MySQL query statement below
SELECT customer_id, count(*) count_no_trans 
FROM visits v
left join Transactions t
on v.visit_id=t.visit_id
where transaction_id is null
group by 1

