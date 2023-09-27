CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE m INT;
SET m = N-1;
  RETURN (
      SELECT DISTINCT(salary) from Employee order by salary DESC
      LIMIT 1 OFFSET m
      
  );
END
