SELECT [CategoryName], SUM([Quantity]) AS [Category Quantity] FROM [Categories]
INNER JOIN [Products] ON [Products].[CategoryID] = [Categories].[CategoryID]
INNER JOIN [Order Details] ON [Order Details].[ProductID] = [Products].[ProductID]
GROUP BY [CategoryName]

SELECT [CategoryName], SUM([Quantity] * [Order Details].[UnitPrice] * (1 - [Discount])) AS [Category Order Value] FROM [Categories]
INNER JOIN [Products] ON [Products].[CategoryID] = [Categories].[CategoryID]
INNER JOIN [Order Details] ON [Order Details].[ProductID] = [Products].[ProductID]
GROUP BY [CategoryName]

SELECT [CategoryName], SUM([Quantity] * [Order Details].[UnitPrice] * (1 - [Discount])) AS [Category Order Value] FROM [Categories]
INNER JOIN [Products] ON [Products].[CategoryID] = [Categories].[CategoryID]
INNER JOIN [Order Details] ON [Order Details].[ProductID] = [Products].[ProductID]
GROUP BY [CategoryName] ORDER BY [Category Order Value]

SELECT [CategoryName], SUM([Quantity] * [Order Details].[UnitPrice] * (1 - [Discount])) AS [Category Order Value] FROM [Categories]
INNER JOIN [Products] ON [Products].[CategoryID] = [Categories].[CategoryID]
INNER JOIN [Order Details] ON [Order Details].[ProductID] = [Products].[ProductID]
GROUP BY [CategoryName] ORDER BY SUM([Quantity])

SELECT [Order Details].[OrderID], (SUM([Quantity] * [UnitPrice] * (1 - [Discount])) + [Freight]) AS [Full cost] FROM [Order Details]
INNER JOIN [Orders] ON [Orders].[OrderID] = [Order Details].[OrderID]
GROUP BY [Order Details].[OrderID], [Freight]
