
select  product_name , sum(o.unit ) as unit  
from products p
natural left join orders o

# where order_date >= '2020-02-01' AND order_date <= '2020-02-29'
# WHERE YEAR(o.order_date)='2020' AND MONTH(o.order_date)='02'
where o.order_date between '2020-02-01' and '2020-02-29'

group by p.product_id 
having sum(o.unit )>= 100
