SELECT [CompanyName], COUNT(*) FROM [Shippers]
INNER JOIN [Orders] ON [Orders].[ShipVia] = [Shippers].[ShipperID]
WHERE YEAR([ShippedDate]) = 1997
GROUP BY [CompanyName]

SELECT TOP 1 [CompanyName], COUNT(*) AS [CNT] FROM [Shippers]
INNER JOIN [Orders] ON [Orders].[ShipVia] = [Shippers].[ShipperID]
WHERE YEAR([ShippedDate]) = 1997
GROUP BY [CompanyName] ORDER BY [CNT] DESC

SELECT [FirstName], [LastName], SUM([Quantity] * [UnitPrice] * (1 - [Discount])) FROM [Employees]
INNER JOIN [Orders] ON [Orders].[EmployeeID] = [Employees].[EmployeeID]
INNER JOIN [Order Details] ON [Order Details].[OrderID] = [Orders].[OrderID]
GROUP BY [Employees].[EmployeeID], [FirstName], [LastName]

SELECT TOP 1 [FirstName], [LastName], COUNT(*) AS [CNT] FROM [Employees]
INNER JOIN [Orders] ON [Orders].[EmployeeID] = [Employees].[EmployeeID]
INNER JOIN [Order Details] ON [Order Details].[OrderID] = [Orders].[OrderID]
WHERE YEAR([ShippedDate]) = 1997
GROUP BY [Employees].[EmployeeID], [FirstName], [LastName] ORDER BY [CNT] DESC

SELECT TOP 1 [FirstName], [LastName], SUM([Quantity] * [UnitPrice] * (1 - [Discount])) AS [SUM] FROM [Employees]
INNER JOIN [Orders] ON [Orders].[EmployeeID] = [Employees].[EmployeeID]
INNER JOIN [Order Details] ON [Order Details].[OrderID] = [Orders].[OrderID]
WHERE YEAR([ShippedDate]) = 1997
GROUP BY [Employees].[EmployeeID], [FirstName], [LastName] ORDER BY [SUM] DESC

SELECT DISTINCT [E].[FirstName], [E].[LastName], SUM([Quantity] * [UnitPrice] * (1 - [Discount])) FROM [Employees] AS [E]
INNER JOIN [Orders] ON [Orders].[EmployeeID] = [E].[EmployeeID]
INNER JOIN [Order Details] ON [Order Details].[OrderID] = [Orders].[OrderID]
LEFT OUTER JOIN [Employees] AS [SUB] ON [E].[EmployeeID] = [SUB].[ReportsTo]
WHERE [SUB].[EmployeeID] IS NOT NULL
GROUP BY [E].[EmployeeID], [SUB].[EmployeeID], [E].[FirstName], [E].[LastName]

SELECT [E].[FirstName], [E].[LastName], SUM([Quantity] * [UnitPrice] * (1 - [Discount])) FROM [Employees] AS [E]
INNER JOIN [Orders] ON [Orders].[EmployeeID] = [E].[EmployeeID]
INNER JOIN [Order Details] ON [Order Details].[OrderID] = [Orders].[OrderID]
LEFT OUTER JOIN [Employees] AS [SUB] ON [E].[EmployeeID] = [SUB].[ReportsTo]
WHERE [SUB].[EmployeeID] IS NULL
GROUP BY [E].[EmployeeID], [SUB].[EmployeeID], [E].[FirstName], [E].[LastName]
