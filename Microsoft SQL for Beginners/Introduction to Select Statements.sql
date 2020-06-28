-- Simple Queries with String --
SELECT 'Cristiana Passos'

SELECT 'Cristina', 'Passos'
-- Simple Queries with String --

-- Math Operations --
SELECT 1 + 1

SELECT 5 - 3

SELECT 4 * 4

SELECT 10 / 5
-- Math Operations --

-- Exercises --
SELECT (7 - 4) * 8

SELECT 'Saratonga Hospital''s Sql Training class'

SELECT 'Day 1 of Training', 5*3
-- Exercises --

-- Select with Tables --
SELECT FirstName 
FROM AdventureWorks2017.Person.Person

SELECT FirstName, LastName  
FROM AdventureWorks2017.Person.Person

SELECT FirstName, MiddleName, LastName
FROM AdventureWorks2017.Person.Person

SELECT TOP 100 FirstName, MiddleName, LastName
FROM AdventureWorks2017.Person.Person

SELECT TOP 10 * 
FROM AdventureWorks2017.Person.Person

SELECT 
    TOP 100 
    FirstName AS "Customer First Name",
    MiddleName AS "Customer Middle  Name",
    LastName AS [Customer Last  Name]
FROM AdventureWorks2017.Person.Person
-- Select with Tables --

-- Select View --
SELECT * FROM HumanResources.vEmployee

SELECT FirstName, LastName, EmailAddress, PhoneNumber
FROM Sales.vIndividualCustomer
-- Select View --

-- Basic SELECT	Statement Practice	Problems --
SELECT 
    TOP 100
    NationalIDNumber
FROM AdventureWorks2017.HumanResources.Employee

SELECT 
    TOP 100
    NationalIDNumber,
    JobTitle
FROM AdventureWorks2017.HumanResources.Employee

SELECT 
    TOP 20
    NationalIDNumber,
    JobTitle,
    BirthDate
FROM AdventureWorks2017.HumanResources.Employee

SELECT 
    TOP 500
    NationalIDNumber AS "SSN",
    JobTitle AS "Job Title",
    BirthDate
FROM AdventureWorks2017.HumanResources.Employee

SELECT * FROM Sales.SalesOrderDetail

SELECT TOP 500 * FROM Sales.Customer

SELECT Name AS "PRODUCT'S NAME" FROM Production.vProductAndDescription

SELECT TOP 400 * FROM HumanResources.Department

SELECT * FROM Production.BillOfMaterials

SELECT TOP 1500 * FROM Sales.vPersonDemographics

-- Basic SELECT	Statement Practice	Problems --
