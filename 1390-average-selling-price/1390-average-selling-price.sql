# mine
# select product_id , ifnull ( round(sum(units * price)/ sum(units), 2), 0) as average_price
# from Prices p  
# natural left join unitssold u
# where purchase_date between start_date and end_date  
# group by product_id 

# Write your MySQL query statement below
SELECT p.product_id, IFNULL(round(SUM(p.price*u.units)/sum(u.units),2),0) as average_price
FROM Prices p 
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND 
u.purchase_date BETWEEN p.Start_date and p.end_date
GROUP BY p.product_id