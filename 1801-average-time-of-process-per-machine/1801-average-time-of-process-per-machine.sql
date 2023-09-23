# USING JOIN


select a1.machine_id, round(avg(a2.timestamp - a1.timestamp),3) as processing_time 
from activity a1
JOIN activity a2
on a1.machine_id = a2.machine_id
and a1.process_id = a2.process_id
and a1.activity_type = 'start'
and a2.activity_type = 'end'

group by a1.machine_id





# # solution 1:

# select a1.machine_id , round(avg(a2.timestamp - a1.timestamp),3) as processing_time 
# from Activity a1 
# join Activity a2
# on 
#      a1.machine_id = a2.machine_id 
#     and a1.activity_type='start' and a2.activity_type='end'

# group by a1.machine_id


# # solution 2:

# select a1.machine_id , round(avg(a2.timestamp - a1.timestamp),3) as processing_time 
# from Activity a1 
# join Activity a2
# on 
#     a1.process_id = a2.process_id 
#     and a1.machine_id = a2.machine_id 
#     and a1.activity_type='start' and a2.activity_type='end'

# group by a1.machine_id

# # solution 3:


# select a1.machine_id , round(avg(a2.timestamp - a1.timestamp),3) as processing_time 
# from Activity a1 
# join Activity a2
# on 
#     a1.process_id = a2.process_id 
#     and a1.machine_id = a2.machine_id 
#     and a1.timestamp<a2.timestamp

# group by a1.machine_id



# #Sub query

# # solution 4:


# select a.machine_id,
# round(
#       (select avg(a1.timestamp) from Activity a1 where a1.activity_type = 'end' and a1.machine_id = a.machine_id) - 
#       (select avg(a1.timestamp) from Activity a1 where a1.activity_type = 'start' and a1.machine_id = a.machine_id)
# ,3) as processing_time
# from Activity a
# group by a.machine_id