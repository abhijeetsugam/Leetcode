# #s1

# select employee_id , department_id 
# from Employee e
# where  primary_flag ='Y' 

# union

# SELECT employee_id, department_id 
# FROM Employee
# WHERE employee_id IN (
#     SELECT employee_id
#     FROM Employee
#     GROUP BY employee_id
#     HAVING COUNT(*) = 1
# )

# #s2

# select employee_id , department_id 
# from Employee e
# where  primary_flag ='Y' or employee_id IN (
#     SELECT employee_id
#     FROM Employee
#     GROUP BY employee_id
#     HAVING COUNT(*) = 1
# )

#s3

select employee_id , department_id 
from Employee e
where  primary_flag ='Y' 


union

select employee_id , department_id 
from Employee e
group by employee_id 
having  count(employee_id) = 1 


