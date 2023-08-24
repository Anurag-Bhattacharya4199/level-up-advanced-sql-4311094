-- Join sales and inventory
SELECT *
FROM sales sls
INNER JOIN inventory inv
ON sls.inventoryId = inv.inventoryId;

--Review the model table
SELECT *
FROM model
LIMIT 10;

--Lookup the modelId for electric model
SELECT modelId
FROM model
WHERE
EngineType = 'Electric';

--final query
SELECT sls.soldDate, sls.salesAmount, inv.colour, inv.year
FROM sales sls
INNER JOIN inventory inv
ON sls.inventoryId = inv.inventoryId
WHERE modelId IN (
  SELECT modelId
FROM model
WHERE
EngineType = 'Electric'
);