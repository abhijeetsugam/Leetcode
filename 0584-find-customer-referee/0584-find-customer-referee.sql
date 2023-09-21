# Write your MySQL query statement below

#solution1

SELECT name from customer
where referee_id != 2 or referee_id is Null



#solution 2

# SELECT name FROM customer
# WHERE IFNULL(referee_id, 0) != 2


# The SQL query  is selecting the name column from the customer table where the referee_id column is not equal to 2. If referee_id is NULL, the IFNULL function replaces it with 0, and then the comparison is made against 2.