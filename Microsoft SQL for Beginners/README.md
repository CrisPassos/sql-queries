# Microsolft SQL for Beginners

## Tools

- Docker
- Azure Data Studio 

## Topics

- Introduction to SELECT Statements
- Filtering Data with the WHERE Clause
- Sorting Data with the ORDER BY Clause
- Querying Multiple Tables with Joins
- Aggregate Functions
- Grouping Data with the GROUP BY Clause
- Filtering Groups with the HAVING Clause

## Install
```bash
docker pull microsoft/mssql-server-linux:2017-latest  
```

```bash
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=STRONGPASSWORD' -p 1401:1433 -d --name=mac_sql microsoft/mssql-server-linux:2017-latest 
```

