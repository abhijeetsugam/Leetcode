# select *
# from patients
# where conditions like '% diab1%' or conditions like 'diab1%'

#1st condition when its 2nd word like in example 4 
#2nd condition when its 1st word like in example 3 


SELECT * FROM Patients
WHERE conditions rlike '\\bDIAB1';
