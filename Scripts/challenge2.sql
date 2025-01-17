-- Find salesperson who have zero sales
SELECT
  e.firstName,
  e.lastName,
  e.title,
  e.startDate,
  s.salesId
FROM
  employee e
LEFT JOIN
  sales s
ON e.employeeId = s.employeeId
WHERE e.title = 'Sales Person'
AND
s.salesID IS NULL;