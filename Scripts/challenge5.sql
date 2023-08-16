-- Least and most expensive car sold by each employee
SELECT
  emp.employeeId,
  emp.firstName,
  emp.lastName,
  MIN(s.salesAmount) AS [Min Sales Amount],
  MAX(s.salesAmount) AS [MAX Sales Amount]
FROM
  sales s
INNER JOIN
  employee emp
ON
  s.employeeId = emp.employeeId
WHERE s.soldDate >= date('now','start of year')
GROUP BY
  emp.employeeId,
  emp.firstName,
  emp.lastName;