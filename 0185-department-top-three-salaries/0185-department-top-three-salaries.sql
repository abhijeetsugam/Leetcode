SELECT Department, employee, salary FROM (
    SELECT d.name AS Department
        , e.name AS employee
        , e.salary
        , DENSE_RANK() OVER (PARTITION BY d.id ORDER BY e.salary DESC) AS salary_rank
    FROM Employee e left JOIN Department d ON e.DepartmentId= d.Id
) t WHERE t.salary_rank <= 3

