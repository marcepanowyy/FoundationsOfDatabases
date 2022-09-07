SELECT [BOSS].[EmployeeID] AS 'BOSS', [E].[EmployeeID] AS 'SUBORDINATE' FROM [Employees] AS [E]
JOIN [Employees] AS [BOSS] ON [E].[ReportsTo] = [BOSS].[EmployeeID]

SELECT [E].[EmployeeID] FROM [Employees] AS [SUB]
RIGHT OUTER JOIN [Employees] AS [E] ON [SUB].[ReportsTo] = [E].[EmployeeID]
WHERE [SUB].[EmployeeID] IS NULL
