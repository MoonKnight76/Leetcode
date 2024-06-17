# Write your MySQL query statement below
SELECT name, sum(amount) balance 
FROM Users u
LEFT JOIN Transactions t
ON u.account=t.account
group by 1
having balance > 10000   