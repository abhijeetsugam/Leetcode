# select *
# from patients
# where conditions like '% diab1%' or conditions like 'diab1%'


SELECT * FROM Patients
WHERE conditions rlike '\\bDIAB1';
