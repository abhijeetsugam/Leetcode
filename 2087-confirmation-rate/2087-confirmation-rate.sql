# Write your MySQL query statement below
select s.user_id , 
round(avg(if(c.action = "confirmed",1,0)),2) as confirmation_rate
# ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 2) AS confirmation_rate
# ROUND(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(c.action), 2)  AS confirmation_rate
from signups s left join Confirmations  c
on s.user_id = c.user_id 
group by s.user_id


