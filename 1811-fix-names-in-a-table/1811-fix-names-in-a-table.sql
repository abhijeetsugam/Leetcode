
select user_id, concat(Upper(substr(name,1,1)),lower(substr(name,2,length(name)))) as name
from users
order by user_id




# SELECT user_id, concat(upper(LEFT(name, 1)), lower(RIGHT(name, length(name)-1))) as name
# FROM users
# ORDER BY user_id;