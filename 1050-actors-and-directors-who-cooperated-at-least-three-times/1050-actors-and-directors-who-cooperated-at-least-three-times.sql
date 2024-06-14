# Write your MySQL query statement below
SELECT actor_id,director_id from(
SELECT actor_id,director_id, CONCAT(CAST(actor_id AS CHAR), CAST(director_id AS CHAR)) AS acdc_ct, COUNT(*)
FROM ActorDirector
GROUP BY 3
HAVING COUNT(*) >= 3
) a;
