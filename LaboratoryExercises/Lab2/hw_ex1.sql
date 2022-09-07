SELECT TOP 10 [OrderID], SUM([UnitPrice] * (1 - [Discount]) * [Quantity]) AS [OrderValue] FROM [Order Details]
GROUP BY [OrderID] ORDER BY [OrderValue] DESC

SELECT [ProductID], SUM([Quantity]) FROM [Order Details] WHERE [ProductID] < 3 GROUP BY [ProductID]

SELECT [ProductID], SUM([Quantity]) FROM [Order Details] GROUP BY [ProductID]

SELECT [OrderID], SUM([UnitPrice] * (1 - [Discount]) * [Quantity]) AS [OrderValue] FROM [Order Details] GROUP BY [OrderID] HAVING SUM([Quantity]) > 250
