DELETE from Person where id not in(
SELECT id FROM(
SELECT email ,id, row_number() over(partition by email order by id asc) as rn
from Person
) 
where rn=1
)