/* Retrieve a list of employers, including first and last names, 
and the first and last names of their immediate managers
*/

SELECT
  e.firstName AS [Employee First Name],
  e.lastName AS [Employee Last Name,
  e.title AS [Employee Title],
  mg.firstName AS [Manager First Name],
  mg.lastName AS [Manager Last Name]
FROM
  employee e
INNER JOIN
  employee mg
ON
  e.managerId = mg.employeeId;