# Write your MySQL query statement below
select *
from users
where mail rlike '^[a-zA-Z][A-Za-z0-9_.-]*@leetcode[.]com$'