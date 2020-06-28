-- Grouping Data with the GROUP BY Clause -- 
SELECT 
    SalesPersonID, SUM(TotalDue) AS "Total Sales"
FROM Sales.SalesOrderHeader
GROUP BY SalesPersonID

SELECT 
    ProductID, 
    SUM(Quantity) AS "Total In Stock",
    COUNT(*) AS "Total Location"
FROM Production.ProductInventory
GROUP BY ProductID

SELECT
    TerritoryID, 
    SalesPersonID, 
    SUM(TotalDue) AS "Total Sales",
    COUNT(*) AS "Total Location"
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2011' AND '12/31/2011'
GROUP BY TerritoryID, SalesPersonID
ORDER By 1, 2

SELECT
    ST.Name AS "TERRITORY NAME", 
    PP.FirstName, PP.LastName, 
    SUM(SOH.TotalDue) AS "Total Sales",
    COUNT(*) AS "Total Location"
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesPerson SP
ON SOH.SalesPersonID = SP.BusinessEntityID
INNER JOIN Person.Person PP
ON SP.BusinessEntityID = PP.BusinessEntityID
INNER JOIN Sales.SalesTerritory ST 
ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '1/1/2011' AND '12/31/2011'
GROUP BY  ST.Name, PP.FirstName, PP.LastName
ORDER By 1, 2

SELECT
    ST.Name AS "TERRITORY NAME", 
    PP.FirstName + ' ' + PP.LastName AS "SALESPERSONAME", 
    SUM(SOH.TotalDue) AS "Total Sales",
    COUNT(*) AS "Total Location"
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesPerson SP
ON SOH.SalesPersonID = SP.BusinessEntityID
INNER JOIN Person.Person PP
ON SP.BusinessEntityID = PP.BusinessEntityID
INNER JOIN Sales.SalesTerritory ST 
ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '1/1/2011' AND '12/31/2011'
GROUP BY  ST.Name, PP.FirstName + ' ' + PP.LastName
ORDER By 1, 2
-- Grouping Data with the GROUP BY Clause --

-- GROUP BY	Clause Practice	Problems --
SELECT
    PersonType,
    COUNT(PersonType) AS "COUNT"
FROM Person.Person
GROUP BY PersonType

SELECT
    Color,
    COUNT(Color) AS "Colour"
FROM Production.Product
WHERE Color IN ('Red', 'Black')
GROUP BY Color

SELECT 
    TerritoryID,
    COUNT(*) AS "Sales"
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2011' AND '12/31/2011'
GROUP BY TerritoryID
ORDER BY "Sales" DESC

SELECT 
    ST.Name,
    COUNT(*) AS "Sales"
FROM Sales.SalesOrderHeader SH
INNER JOIN Sales.SalesTerritory ST
ON SH.TerritoryID = ST.TerritoryID
WHERE OrderDate BETWEEN '1/1/2011' AND '12/31/2011'
GROUP BY ST.Name
ORDER BY "Sales" DESC


-- GROUP BY	Clause Practice	Problems --
