# Write your MySQL query statement below
SELECT a.firstName, a.lastName, b.city, b.state 
from person a
LEFT JOIN Address b
on a.personId=b.personId