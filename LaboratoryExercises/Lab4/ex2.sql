SELECT [ProductName], (SELECT MAX([Quantity]) FROM [Order Details] as [A]
                       WHERE [A].[ProductID] = [B].[ProductID]) AS [maxi]
FROM [Products] AS [B]


SELECT [ProductName] FROM [Products]
WHERE [UnitPrice] < (SELECT AVG([UnitPrice]) FROM [Products])


SELECT [ProductName] FROM [Products] AS [B]
WHERE [UnitPrice] < (SELECT AVG([UnitPrice]) FROM [Products] AS [A]
                     WHERE [A].[CategoryID] = [B].[CategoryID])
