# select distinct l1.num as ConsecutiveNums 

# from 
#     logs l1,
#     logs l2,
#     logs l3
# where
#     l1.id = l2.id -1 and
#     l1.id = l3.id -2 and
#     l1.num = l2.num and
#     l2.num = l3.num



with cte as (

select num , lead(num,1) over () as num1, lead(num,2) over () as num2
from logs

)

select distinct num as ConsecutiveNums from cte where num1 = num2 and num2 = num