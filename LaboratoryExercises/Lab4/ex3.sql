SELECT [ProductName], [UnitPrice], (SELECT AVG([UnitPrice]) FROM [Products]) AS [AVERAGE_ALL],
[UnitPrice] - (SELECT AVG([UnitPrice]) FROM [Products]) FROM [Products]


SELECT (SELECT [CategoryName] FROM [Categories] AS [C] WHERE [C].[CategoryID] = [P].[CategoryID]) AS "Category name",
[ProductName], [UnitPrice], (SELECT AVG([UnitPrice]) FROM [Products] WHERE [CategoryID] = [P].[CategoryID]) AS "Category average",
[UnitPrice] - (SELECT AVG([UnitPrice]) FROM [Products] WHERE [CategoryID] = [P].[CategoryID]) AS "Diff" FROM [Products] AS [P]
