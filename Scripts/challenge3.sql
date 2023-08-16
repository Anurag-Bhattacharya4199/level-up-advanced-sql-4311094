SELECT
  s.salesAmount,
  s.soldDate,
  c.firstName,
  c.lastName,
  c.email 
FROM
  customer c
INNER JOIN
  sales s 
ON
  c.customerId = s.customerId
UNION
SELECT
  s.salesAmount,
  s.soldDate,
  c.firstName,
  c.lastName,
  c.email
FROM
  customer c
LEFT JOIN
  sales s
ON
  c.customerId = s.customerId
WHERE
  s.salesId IS NULL
UNION
SELECT
  s.salesAmount,
  s.soldDate,
  c.firstName,
  c.lastName,
  c.email
FROM
  sales s
LEFT JOIN
  customer c
ON
  c.customerId = s.customerId
WHERE
  s.salesId IS NULL