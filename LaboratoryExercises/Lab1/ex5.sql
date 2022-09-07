SELECT [CompanyName], [Country] FROM [Customers] ORDER BY [Country], [CompanyName]

SELECT [ProductName], [UnitPrice], [CategoryID] FROM [Products] ORDER BY [CategoryID], [UnitPrice] DESC

SELECT [CompanyName], [Country] FROM [Customers] WHERE Country in ('UK', 'Italy') ORDER BY [Country], [CompanyName]

SELECT DISTINCT [Country] FROM [Suppliers] ORDER BY [Country]

SELECT [FirstName] AS [First], [LastName] AS [Last], [EmployeeID] AS 'Employee ID: ' FROM [Employees]

SELECT [FirstName], [LastName], 'Identification number: ', [EmployeeID] FROM [Employees]

SELECT [OrderID], [UnitPrice] * 1.05 AS [NewUnitPrice] FROM [Order Details]

SELECT [FirstName] + ' ' + [LastName] AS [First and last name] FROM [Employees]
