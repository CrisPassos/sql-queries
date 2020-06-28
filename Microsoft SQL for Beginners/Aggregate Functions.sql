-- Aggregate Functions --
SELECT 
    MAX(TotalDue)
FROM Sales.SalesOrderHeader

SELECT 
    MIN(TotalDue)
FROM Sales.SalesOrderHeader

SELECT 
    COUNT(*)
FROM Sales.SalesOrderHeader

SELECT 
    COUNT(SalesOrderID)
FROM Sales.SalesOrderHeader

SELECT 
    COUNT(SalesPersonID)
FROM Sales.SalesOrderHeader

SELECT
    COUNT(DISTINCT FirstName)
FROM Person.Person

SELECT
    AVG(TotalDue)
FROM Sales.SalesOrderHeader

SELECT
    SUM(TotalDue)
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2011' AND '12/31/2011'

-- Aggregate Functions --

-- Aggregate Function Practice Problems --
SELECT
    COUNT(*)
FROM Person.Person

SELECT
    COUNT(MiddleName)
FROM Person.Person

SELECT
    AVG(StandardCost)
FROM Production.Product

SELECT
    AVG(Freight)
FROM Sales.SalesOrderHeader
WHERE TerritoryID = 4

SELECT
    MAX(ListPrice)
FROM Production.Product


SELECT 
    SUM(PP.ListPrice * PPI.Quantity)
FROM Production.Product PP 
INNER JOIN Production.ProductInventory PPI
ON PP.ProductID = PPI.ProductID
WHERE PP.ListPrice > 0
-- Aggregate Function Practice Problems --