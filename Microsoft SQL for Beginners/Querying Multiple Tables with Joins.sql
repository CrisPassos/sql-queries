-- Using the INNER JOIN --
SELECT 
    P.Name,
    P.ProductNumber,
    PS.Name AS "PRODUCT SUB CATEGORY"
FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS 
ON P.ProductSubcategoryID = PS.ProductSubcategoryID
ORDER BY "PRODUCT SUB CATEGORY"

SELECT 
    PS.Name AS "PRODUCTSUBCATEGORY",
    PC.Name AS "PRODUCTCATEGORY"
FROM Production.ProductSubcategory PS 
INNER JOIN Production.ProductCategory PC
ON PS.ProductCategoryID = PC.ProductCategoryID

SELECT 
    P.FirstName,
    P.LastName,
    E.EmailAddress,
    PP.PhoneNumber
FROM Person.Person P 
INNER JOIN Person.EmailAddress E 
ON P.BusinessEntityID = E.BusinessEntityID
INNER JOIN Person.PersonPhone PP
ON PP.BusinessEntityID = P.BusinessEntityID
-- Using the INNER JOIN --

-- INNER JOIN Practice Problems --
SELECT 
    P.FirstName,
    P.LastName,
    PP.PasswordHash
FROM Person.Person P
INNER JOIN Person.Password PP
ON P.BusinessEntityID = PP.BusinessEntityID

SELECT 
    HE.BusinessEntityID,
    HE.NationalIDNumber,
    HE.JobTitle,
    HD.DepartmentID,
    HD.StartDate,
    HD.EndDate
FROM HumanResources.Employee HE 
INNER JOIN HumanResources.EmployeeDepartmentHistory HD
ON HE.BusinessEntityID = HD.BusinessEntityID

SELECT 
    HE.BusinessEntityID,
    HE.NationalIDNumber,
    HE.JobTitle,
    HD.DepartmentID,
    HD.StartDate,
    HD.EndDate,
    PE.EmailAddress
FROM HumanResources.Employee HE 
INNER JOIN HumanResources.EmployeeDepartmentHistory HD
ON HE.BusinessEntityID = HD.BusinessEntityID
INNER JOIN Person.EmailAddress PE 
ON HE.BusinessEntityID = PE.BusinessEntityID

-- INNER JOIN Practice Problems --

-- Using the LEFT OUTER JOIN --
SELECT 
    P.Name,
    P.ProductNumber,
    PS.Name AS "ProductSubcategoryName"
FROM Production.Product P
LEFT OUTER JOIN Production.ProductSubcategory PS
ON PS.ProductSubcategoryID = P.ProductSubcategoryID


SELECT 
    P.Name,
    P.ProductNumber,
    PS.Name AS "ProductSubcategoryName"
FROM Production.ProductSubcategory PS 
RIGHT OUTER JOIN Production.Product P
ON PS.ProductSubcategoryID = P.ProductSubcategoryID

SELECT 
    P.FirstName,
    P.LastName,
    SOH.TotalDue,
    T.Name AS "TerritoryName"
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesPerson SP
ON SOH.SalesPersonID = SP.BusinessEntityID
LEFT OUTER JOIN HumanResources.Employee E
ON E.BusinessEntityID = SP.BusinessEntityID
LEFT OUTER JOIN Person.Person P
ON P.BusinessEntityID = E.BusinessEntityID
LEFT OUTER JOIN Sales.SalesTerritory T 
ON T.TerritoryID = SOH.TerritoryID


SELECT 
    P.FirstName,
    P.LastName,
    SOH.TotalDue,
    T.Name AS "TerritoryName"
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesPerson SP
ON SOH.SalesPersonID = SP.BusinessEntityID
LEFT OUTER JOIN HumanResources.Employee E
ON E.BusinessEntityID = SP.BusinessEntityID
LEFT OUTER JOIN Person.Person P
ON P.BusinessEntityID = E.BusinessEntityID
LEFT OUTER JOIN Sales.SalesTerritory T 
ON T.TerritoryID = SOH.TerritoryID
WHERE T.Name = 'Northwest'
ORDER BY 4 DESC
-- Using the LEFT OUTER JOIN --

-- LEFT	OUTER JOIN and RIGHT OUTER JOIN Practice Problems --
SELECT 
    SP.BusinessEntityID,
    SP.SalesYTD,
    ST.Name AS "TerritoryName"
FROM Sales.SalesPerson SP 
LEFT OUTER JOIN Sales.SalesTerritory ST 
ON SP.TerritoryID = ST.TerritoryID

SELECT 
    PP.FirstName,
    PP.LastName,
    SP.BusinessEntityID,
    SP.SalesYTD,
    ST.Name AS "TerritoryName"
FROM Sales.SalesPerson SP 
LEFT OUTER JOIN Sales.SalesTerritory ST 
ON SP.TerritoryID = ST.TerritoryID
LEFT OUTER JOIN Person.Person PP 
ON SP.BusinessEntityID = PP.BusinessEntityID
WHERE ST.Name IN ('Northeast', 'Central')

SELECT 
    PP.Name AS "ProductName",
    PP.ListPrice,
    PS.Name AS "ProductSubcategoryName" ,
    PC.Name  AS "ProductCategoryName"
FROM Production.Product PP
LEFT OUTER JOIN Production.ProductSubcategory PS
ON PP.ProductSubcategoryID = PS.ProductSubcategoryID 
LEFT OUTER JOIN Production.ProductCategory PC 
ON PS.ProductCategoryID = PC.ProductCategoryID
ORDER BY "ProductCategoryName" DESC, "ProductSubcategoryName" ASC

-- LEFT	OUTER JOIN and RIGHT OUTER JOIN Practice Problems --
