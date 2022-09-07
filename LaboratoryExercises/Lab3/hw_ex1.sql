SELECT [Order Details].[OrderID], SUM([Quantity]) AS 'All quantities', [CompanyName] FROM [Order Details]
INNER JOIN [Orders] ON [Orders].[OrderID] = [Order Details].[OrderID]
INNER JOIN [Customers] ON [Customers].[CustomerID] = [Orders].[CustomerID]
GROUP BY [Order Details].[OrderID], [CompanyName]

SELECT [Order Details].[OrderID], SUM([Quantity]) AS [All quantities], [CompanyName] FROM [Order Details]
INNER JOIN [Orders] ON [Orders].[OrderID] = [Order Details].[OrderID]
INNER JOIN [Customers] ON [Customers].[CustomerID] = [Orders].[CustomerID]
GROUP BY [Order Details].[OrderID], [CompanyName] HAVING SUM([Quantity]) > 250

SELECT [CompanyName], SUM([Quantity] * [UnitPrice] * (1 - [Discount])) AS [Price] FROM [Order Details]
INNER JOIN [Orders] ON [Orders].[OrderID] = [Order Details].[OrderID]
INNER JOIN [Customers] ON [Customers].[CustomerID] = [Orders].[CustomerID]
GROUP BY [Orders].[OrderID], [CompanyName]

SELECT [CompanyName], SUM([Quantity] * [UnitPrice] * (1 - [Discount])) AS [Price] FROM [Order Details]
INNER JOIN [Orders] ON [Orders].[OrderID] = [Order Details].[OrderID]
INNER JOIN [Customers] ON [Customers].[CustomerID] = [Orders].[CustomerID]
GROUP BY [Orders].[OrderID], [CompanyName] HAVING SUM([Quantity]) > 250

SELECT [CompanyName], SUM([Quantity] * [UnitPrice] * (1 - [Discount])) AS [Price], [FirstName], [LastName] FROM [Order Details]
INNER JOIN [Orders] ON [Orders].[OrderID] = [Order Details].[OrderID]
INNER JOIN [Customers] ON [Customers].[CustomerID] = [Orders].[CustomerID]
INNER JOIN [Employees] ON [Employees].[EmployeeID] = [Orders].[EmployeeID]
GROUP BY [Orders].[OrderID], [CompanyName], [FirstName], [LastName] HAVING SUM([Quantity]) > 250
