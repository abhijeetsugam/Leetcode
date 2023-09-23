# Write your MySQL query statement below


select u.unique_id  ,e.name
from Employees as e
left join EmployeeUNI as u
on e.id = u.id






# select unique_id , name    
# from employees as e Left join EmployeeUNI as d
# on e.id = d.id 