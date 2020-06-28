-- Sorting Data with the ORDER BY Clause --
SELECT 
    FirstName,
    LastName
FROM Sales.vIndividualCustomer
ORDER BY FirstName 

SELECT 
    FirstName,
    LastName
FROM Sales.vIndividualCustomer
ORDER BY 2

SELECT 
    FirstName,
    LastName AS "Customer Last Name"
FROM Sales.vIndividualCustomer
ORDER BY "Customer Last Name" DESC 

SELECT 
    FirstName,
    LastName
FROM Sales.vIndividualCustomer
ORDER BY LastName ASC, FirstName DESC 

-- Sorting Data with the ORDER BY Clause --

-- Exercices --
SELECT 
    FirstName, 
    LastName,
    JobTitle
FROM HumanResources.vEmployeeDepartment
ORDER BY FirstName

SELECT 
    FirstName, 
    LastName,
    JobTitle
FROM HumanResources.vEmployeeDepartment
ORDER BY 2 DESC

SELECT 
    FirstName, 
    LastName,
    CountryRegionName
FROM Sales.vIndividualCustomer
ORDER BY CountryRegionName

SELECT 
    FirstName, 
    LastName,
    CountryRegionName
FROM Sales.vIndividualCustomer
WHERE CountryRegionName IN ('United States', 'France')
ORDER BY CountryRegionName


SELECT 
    Name, 
    AnnualSales,
    YearOpened,
    SquareFeet AS "Store Size",
    NumberEmployees AS "Total Employees"
FROM Sales.vStoreWithDemographics
WHERE AnnualSales > 1000000 AND NumberEmployees >= 45
ORDER BY "Store Size" DESC, "Total Employees" DESC

-- Exercices --