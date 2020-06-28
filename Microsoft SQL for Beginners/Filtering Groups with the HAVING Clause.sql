-- Filtering Groups with the HAVING Clause --
SELECT
    ST.Name AS "Territory Name",
    SUM(TotalDue) AS "Total Sales - 2006"
FROM Sales.SalesTerritory ST 
INNER JOIN Sales.SalesOrderHeader SOH 
ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '1/1/2011' AND '12/31/2011'
GROUP BY ST.Name
HAVING SUM(TotalDue) > 1000000
ORDER BY 1

SELECT
    PS.Name AS "Subcategory Name",
    COUNT(*) AS "Product COUNT"
FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS 
ON P.ProductSubcategoryID = PS.ProductSubcategoryID
GROUP BY PS.Name
HAVING COUNT(*) > 15
ORDER BY 1


SELECT 
    Department AS "Department Name",
    COUNT(*)
FROM HumanResources.vEmployeeDepartment
GROUP BY Department
HAVING COUNT(*) BETWEEN 6 and 7


SELECT 
    Department AS "Department Name",
    COUNT(*)
FROM HumanResources.vEmployeeDepartment
GROUP BY Department
HAVING COUNT(*) IN (6, 10)

SELECT
    SalesPersonID,
    SUM(TotalDue) AS "TOTAL SALES AMOUNT",
    COUNT(*) AS "TOTAL SALES COUNT"
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2011' AND '12/31/2011'
        AND SalesPersonID IS NOT NULL
GROUP BY SalesPersonID
HAVING SUM(TotalDue) >= 1000000
        AND COUNT(*) >= 10
ORDER BY "TOTAL SALES AMOUNT" DESC

-- Filtering Groups with the HAVING Clause --

-- HAVING Clause Practice Problems --
SELECT 
    TerritoryID,
    SUM(TotalDue) AS "Total Territory"
FROM Sales.SalesOrderHeader
GROUP BY TerritoryID
HAVING SUM(TotalDue) > 10000000

SELECT 
    ST.Name AS "NAME TERRITORY",
    SUM(SOH.TotalDue) AS "Total Territory"
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesTerritory ST
ON SOH.TerritoryID = ST.TerritoryID
GROUP BY ST.Name
HAVING SUM(TotalDue) > 10000000

SELECT 
    Color,
    COUNT(Color)
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color
HAVING COUNT(Color) > 20

SELECT 
    PP.Name AS "Product Name",
    COUNT(*) AS "Total ORDER"
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesOrderDetail SOD
ON SOH.SalesOrderID = SOD.SalesOrderID
INNER JOIN Production.Product PP
ON SOD.ProductID = PP.ProductID
WHERE SOH.OrderDate BETWEEN '1/1/2011' AND '12/31/2011'
GROUP BY PP.Name
HAVING COUNT(*) > 200


SELECT 
    PP.FirstName,
    PP.LastName,
    COUNT(*) AS "OrdersPlaced"
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.Customer SC
ON SOH.CustomerID = SC.CustomerID
INNER JOIN Person.Person PP
ON SC.PersonID = PP.BusinessEntityID
WHERE SOH.OrderDate BETWEEN '1/1/2011' AND '12/31/2014'
GROUP BY  PP.FirstName, PP.LastName
HAVING COUNT(*) >= 6
ORDER BY "OrdersPlaced"

-- HAVING Clause Practice Problems --