select employee_id , department_id 
from Employee e
where  primary_flag ='Y' 

union

SELECT employee_id, department_id 
FROM Employee
WHERE employee_id IN (
    SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(*) = 1
)



