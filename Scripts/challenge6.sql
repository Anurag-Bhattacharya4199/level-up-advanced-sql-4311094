-- Display a report for employees who have sold more than 5 cars
SELECT
  emp.employeeId,
  MIN(s.salesAmount) AS [MIN Sales Amount],
  MAX(s.salesAmount) AS [MAX Sales Amount],
  COUNT(*) AS [NumOfCarsSold]
FROM
  sales s 
INNER JOIN
  employee emp
ON
  s.employeeId = emp.employeeId
WHERE
  s.soldDate > date('now','start of year')
GROUP BY
  emp.employeeId
HAVING
  NumOfCarsSold > 5;