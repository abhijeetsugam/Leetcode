# Write your MySQL query statement below

#first 
# select  customer_id , count(v.visit_id ) as count_no_trans 
# from visits as v 
# left join Transactions as t 
# on v.visit_id = t.visit_id
# where transaction_id IS NULL
# GROUP BY customer_id


#second
# select  customer_id , count(v.visit_id ) as count_no_trans 
# from visits  v 
# where visit_id not in (
#   select visit_id from Transactions
# )
# Group by customer_id

#third
# select customer_id , count(v.visit_id) as count_no_trans
# from visits v left join Transactions t
# on v.visit_id = t.visit_id
# where amount is null
# group by customer_id


#4th
# select customer_id , count(v.visit_id) as count_no_trans
# from visits v 
# natural left join Transactions t
# where amount is null
# group by customer_id




#if we use select * and not group by
#sab null hai koi b column leke kar do
# +----------+-------------+----------------+----------+--------+
# | visit_id | customer_id | transaction_id | visit_id | amount |
# +----------+-------------+----------------+----------+--------+
# | 4        | 30          | NULL           | NULL     | NULL   |
# | 6        | 96          | NULL           | NULL     | NULL   |
# | 7        | 54          | NULL           | NULL     | NULL   |
# | 8        | 54          | NULL           | NULL     | NULL   |
# +----------+-------------+----------------+----------+--------+


select customer_id , count(customer_id) as count_no_trans
from visits as v
left join transactions as t
on v.visit_id = t.visit_id
where transaction_id is null
group by customer_id

