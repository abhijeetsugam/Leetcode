# Write your MySQL query statement below

select e2.name
from employee e1
join employee e2
on e1.managerid = e2.id
group by e1.managerid
having count(e1.managerid) >= 5

#use left join and see why 8th testcase fails

# SELECT e2.name
# FROM employee e1
# JOIN employee e2 ON e1.managerid = e2.id
# GROUP BY e2.name
# HAVING COUNT(e1.managerid) >= 5;
