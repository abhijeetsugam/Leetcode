#no need of if null, 

SELECT(SELECT DISTINCT
    Salary 
FROM
    Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET 1)AS SecondHighestSalary;


# select ifnull((select distinct salary 
# from employee
# order by salary desc
# limit 1 offset 1 ), Null ) as SecondHighestSalary 











