# SELECT Department, employee, salary FROM (
#     SELECT d.name AS Department
#         , e.name AS employee
#         , e.salary
#         , DENSE_RANK() OVER (PARTITION BY d.id ORDER BY e.salary DESC) AS salary_rank
#     FROM Employee e left JOIN Department d ON e.DepartmentId= d.Id
# ) t WHERE t.salary_rank <= 3



select
    d.name department,
    e1.name employee,
    e1.salary salary
from
    employee e1
    join employee e2
    join department d on e1.departmentid = e2.departmentid
    and e1.salary <= e2.salary
    and d.id = e2.departmentid
group by
    d.name,  e1.salary, e1.name
having
    count(distinct(e2.salary)) <= 3