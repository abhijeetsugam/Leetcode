select e2.employee_id as employee_id, e2.name as name , count(*) as reports_count , round(avg(e1.age)) as average_age 
 from employees e1
 left join employees e2
 on e1.reports_to   = e2.employee_id 
 group by e2.employee_id 
 HAVING e2.employee_id IS NOT NULL
 order by e2.employee_id

