-- 1.
SELECT [FirstName], [LastName], (SELECT SUM([Freight]) FROM [Orders]
                                 WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] as [E3]
                                                        WHERE [E1].[EmployeeID] = [E3].[EmployeeID]))
+
(SELECT SUM((1 - [Discount]) * [UnitPrice] * [Quantity]) FROM [Order Details]
 WHERE [OrderID] IN (SELECT [OrderID] FROM [Orders]
                     WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] AS [E2]
                                            WHERE [E1].[EmployeeID] = [E2].[EmployeeID]))) FROM [Employees] AS [E1]


-- 2.
SELECT TOP 1 [FirstName], [LastName], (SELECT SUM((1 - [Discount]) * [UnitPrice] * [Quantity]) FROM [Order Details]
                                 WHERE [OrderID] IN (SELECT [OrderID] FROM [Orders]
                                                     WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] AS [E2]
                                                                            WHERE [E1].[EmployeeID] = [E2].[EmployeeID]) AND YEAR([ShippedDate]) = 1997)) FROM [Employees] AS [E1]
WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Orders]
                       WHERE YEAR([ShippedDate]) = 1997) ORDER BY 3 DESC


-- 3. a)
SELECT [FirstName], [LastName], (SELECT SUM([Freight]) FROM [Orders]
                                 WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] as [E3]
                                                        WHERE [E1].[EmployeeID] = [E3].[EmployeeID]))
+
(SELECT SUM((1 - [Discount]) * [UnitPrice] * [Quantity]) FROM [Order Details]
 WHERE [OrderID] IN (SELECT [OrderID] FROM [Orders]
                     WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] AS [E2]
                                            WHERE [E1].[EmployeeID] = [E2].[EmployeeID]))) FROM [Employees] AS [E1]
                                                                                           WHERE [EmployeeID] IN (SELECT [ReportsTo] FROM [Employees])


-- 3. b)
SELECT [FirstName], [LastName], (SELECT SUM([Freight]) FROM [Orders]
                                 WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] as [E3]
                                                        WHERE [E1].[EmployeeID] = [E3].[EmployeeID]))
+
(SELECT SUM((1 - [Discount]) * [UnitPrice] * [Quantity]) FROM [Order Details]
 WHERE [OrderID] IN (SELECT [OrderID] FROM [Orders]
                     WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] AS [E2]
                                            WHERE [E1].[EmployeeID] = [E2].[EmployeeID]))) FROM [Employees] AS [E1]
                                                                                           WHERE [EmployeeID] NOT IN (SELECT [ReportsTo] FROM [Employees]
                                                                                                                      WHERE [ReportsTo] IS NOT NULL)


-- 4. a)
SELECT [FirstName], [LastName], (SELECT SUM([Freight]) FROM [Orders]
                                 WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] as [E3]
                                                        WHERE [E1].[EmployeeID] = [E3].[EmployeeID]))
+
(SELECT SUM((1 - [Discount]) * [UnitPrice] * [Quantity]) FROM [Order Details]
 WHERE [OrderID] IN (SELECT [OrderID] FROM [Orders]
                     WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] AS [E2]
                                            WHERE [E1].[EmployeeID] = [E2].[EmployeeID]))),
(SELECT MAX([ShippedDate]) FROM [Orders] WHERE [EmployeeID] = [E1].[EmployeeID])
FROM [Employees] AS [E1] WHERE [EmployeeID] IN (SELECT [ReportsTo] FROM [Employees])


-- 4. b)
SELECT [FirstName], [LastName], (SELECT SUM([Freight]) FROM [Orders]
                                 WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] as [E3]
                                                        WHERE [E1].[EmployeeID] = [E3].[EmployeeID]))
+
(SELECT SUM((1 - [Discount]) * [UnitPrice] * [Quantity]) FROM [Order Details]
 WHERE [OrderID] IN (SELECT [OrderID] FROM [Orders]
                     WHERE [EmployeeID] IN (SELECT [EmployeeID] FROM [Employees] AS [E2]
                                            WHERE [E1].[EmployeeID] = [E2].[EmployeeID]))),
(SELECT MAX([ShippedDate]) FROM [Orders] WHERE [EmployeeID] = [E1].[EmployeeID])
FROM [Employees] AS [E1] WHERE [EmployeeID] NOT IN (SELECT [ReportsTo] FROM [Employees]
                                                    WHERE [ReportsTo] IS NOT NULL)
