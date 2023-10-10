#normal

# select distinct product_id, 10 as price 
# from Products 
# where product_id not in
# (select distinct product_id from Products where change_date <='2019-08-16' )

# union 

# select product_id, new_price as price 
# from Products 
# where (product_id,change_date) in 
# (select product_id , max(change_date) as date from Products where change_date <='2019-08-16' group by product_id)



#window

SELECT product_id, FIRST_VALUE(new_price) OVER(PARTITION BY product_id ORDER BY change_date DESC
                                ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS price
FROM Products
WHERE change_date <= '2019-08-16'

UNION

SELECT DISTINCT product_id, 10 AS price
FROM Products
WHERE product_id NOT IN (SELECT product_id FROM Products WHERE change_date <= '2019-08-16')




# SELECT product_id, 
#        LAST_VALUE(new_price) OVER(PARTITION BY product_id ORDER BY change_date 
#                                   ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS price
# FROM Products
# WHERE change_date <= '2019-08-16'

# UNION

# SELECT DISTINCT product_id, 10 AS price
# FROM Products
# WHERE product_id NOT IN (SELECT product_id FROM Products WHERE change_date <= '2019-08-16')















