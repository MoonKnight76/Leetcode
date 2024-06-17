# Write your MySQL query statement below
SELECT user_id, name, mail 
FROM users
where regexp_like(mail, '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$')