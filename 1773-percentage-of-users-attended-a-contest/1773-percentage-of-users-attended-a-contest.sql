# Write your MySQL query statement below

select contest_id , round(((count( contest_id ) / (SELECT COUNT(*) FROM Users)) * 100 ) , 2 ) as percentage 
from register r
group by contest_id 
order by percentage desc,contest_id 
