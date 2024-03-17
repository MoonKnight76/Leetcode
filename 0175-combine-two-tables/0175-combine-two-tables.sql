SELECT firstname, lastname, city, state
from person a
left join Address b
on a.personId=b.personID 
