-- Cars has been sold per employee
SELECT
  emp.employeeId,
  emp.firstName,
  emp.lastName,
  COUNT(*) AS [NumOfCarsSold]
FROM
  sales s 
INNER JOIN
  employee emp
ON
  s.employeeId = emp.employeeId
GROUP BY
  emp.employeeId,
  emp.firstName,
  emp.lastName
ORDER BY
  NumOfCarsSold DESC;