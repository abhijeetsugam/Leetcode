# Write your MySQL query statement below

select name,bonus
from employee e
natural left join bonus b
where b.bonus < 1000 or b.bonus is null

































# select name ,bonus 
# from employee e 
# natural left join bonus b 
# where bonus is null or bonus < 1000


# select e.name , b.bonus
# from employee e 
# left join bonus b 
# on e.empId = b.empId
# where bonus is null or bonus<1000
