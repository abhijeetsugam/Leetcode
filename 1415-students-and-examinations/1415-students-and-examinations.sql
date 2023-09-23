# Write your MySQL query statement below

select 
s.student_id,s.student_name,su.subject_name ,count(e.subject_name) as attended_exams
from students s 
cross join subjects su
left join examinations e
  on s.student_id = e.student_id 
  AND su.subject_name = e.subject_name
GROUP BY  s.student_name,su.subject_name
order by s.student_id ,su.subject_name




#gpt

# SELECT 
#     s.student_id,
#     s.student_name,
#     sub.subject_name,
#     COALESCE(COUNT(e.subject_name), 0) AS attended_exams
# FROM Students s
# CROSS JOIN Subjects sub
# LEFT JOIN Examinations e ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
# GROUP BY s.student_id, s.student_name, sub.subject_name
# ORDER BY s.student_id, sub.subject_name;
