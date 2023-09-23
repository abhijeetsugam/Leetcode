# datediff,subdate




select w2.id 
from weather w1 
cross join weather w2
on datediff(w2.recorddate,w1.recorddate) =1
where w1.temperature < w2.temperature




# select w2.id 
# from Weather w1 ,Weather w2
# where w2.temperature > w1.temperature and datediff(w2.recordDate ,w1.recordDate ) = 1



# select w2.id 
# from Weather w1 ,Weather w2
# where w2.temperature > w1.temperature and subdate(w2.recordDate, 1) = w1.recordDate;
#where subdate -> subtract date 


#join method


# SELECT w2.id 
# from Weather w1 JOIN Weather w2
# ON w2.temperature > w1.temperature AND
# datediff(w2.recordDate,w1.recordDate) = 1;



