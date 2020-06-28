-- Using Where --
SELECT *
FROM Production.Product
WHERE ListPrice > 10 

SELECT * 
FROM Production.Product
WHERE ListPrice <> 10
-- Using Where --

-- Where with String --
SELECT *
FROM HumanResources.vEmployee
WHERE FirstName = 'Chris'

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName = 'CHRIS'

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName <> 'CHRIS'

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName <> 'CHRIS'

SELECT *
FROM HumanResources.Employee
WHERE BirthDate <= '1/1/1999'

-- Where with String --

-- AND, OR OPERATORS --
SELECT *
FROM HumanResources.Employee
WHERE BirthDate >= '1/1/1980' AND Gender = 'F'

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'S' AND Gender = 'M'


SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'S' OR Gender = 'M'

SELECT *
FROM HumanResources.Employee
WHERE (MaritalStatus = 'S' AND Gender = 'M') OR OrganizationLevel = 4

SELECT 
    ListPrice,
    Color,
    StandardCost
FROM Production.Product
WHERE ListPrice > 100 AND (Color = 'Red' OR StandardCost < 100)

SELECT * 
FROM HumanResources.vEmployeeDepartment
WHERE Department = 'Research and Development' OR 
    (StartDate = '1/1/2005' AND Department = 'Executive')

SELECT 
    AnnualSales,
    BusinessType,
    YearOpened, 
    NumberEmployees
FROM Sales.vStoreWithDemographics
WHERE (AnnualSales > 100000 AND BusinessType = 'OS') OR
      (YearOpened < 1990  AND SquareFeet > 40000 and NumberEmployees > 10)

-- AND, OR OPERATORS --

-- IN, Between Operators --
SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName IN ('Chris', 'Steve', 'Michael', 'Thomas')

SELECT *
FROM Sales.vStoreWithDemographics
WHERE AnnualSales BETWEEN 1000000 and 2000000

SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'MI%'

SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'MI_'

SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName LIKE '%s'


SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName LIKE '%h%'

SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName LIKE '_on'

SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'D[a,o]n'


SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'D[a-f]n'

SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'D[a-f, r-z]n'

SELECT * 
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'D[^a-f]n'
-- IN, Between Operators --

-- NULL --
SELECT *
FROM Person.Person
WHERE MiddleName = NULL

SELECT *
FROM Person.Person
WHERE MiddleName IS NULL


SELECT *
FROM Person.Person
WHERE MiddleName IS NOT NULL
-- NULL --

-- WHERE	Clause	Practice	Problems --
SELECT 
    FirstName,
    LastName
FROM Person.Person
WHERE FirstName = 'Mark'

SELECT TOP 100 *
FROM Production.Product 
WHERE ListPrice <> 0

SELECT *
FROM HumanResources.vEmployee
WHERE LastName < 'D'

SELECT * 
FROM Person.StateProvince
WHERE CountryRegionCode = 'CA'

SELECT 
    FirstName as "Customer First Name",
    LastName as "Customer Last Name"
FROM Sales.vIndividualCustomer
WHERE LastName = 'Smith'

SELECT TOP 500
    CountryRegionName,
    PhoneNumberType,
    EmailPromotion
FROM Sales.vIndividualCustomer
WHERE CountryRegionName = 'Australia' OR (PhoneNumberType = 'Cell' AND EmailPromotion = 0)

SELECT 
    Department
FROM HumanResources.vEmployeeDepartment
WHERE Department IN ('Executive', 'Tool Design', 'Engineering')

SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE StartDate BETWEEN '7/1/2000' AND '6/30/2009'

SELECT *
FROM Sales.vIndividualCustomer 
WHERE LastName LIKE 'R%'

SELECT *
FROM Sales.vIndividualCustomer 
WHERE LastName LIKE '%r'

SELECT *
FROM Sales.vIndividualCustomer 
WHERE LastName IN ('Lopez', 'Martin', 'Wood') AND 
      FirstName LIKE '[C-L]%'

SELECT *
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL

SELECT 
    SalesPersonID,
    TotalDue
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL AND TotalDue > 70000


-- WHERE	Clause	Practice	Problems --
