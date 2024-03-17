SELECT a.firstname, a.lastname, b.city, b.state
from person a
left join Address b
on a.personId=b.personID 
