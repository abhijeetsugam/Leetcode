

# delete p1 
# from person p1,person p2 
# where p1.email=p2.email and p1.id > p2.id


DELETE p1 
FROM person p1
JOIN person p2 ON p1.email = p2.email 
WHERE p1.id > p2.id;
