SELECT ([Freight] + (SELECT SUM((1 - [Discount]) * [Quantity] * [UnitPrice]) FROM [Order Details] AS [OD]
WHERE [OD].[OrderID] = [O].[OrderID])) AS "Full price" FROM [Orders] AS [O] WHERE [OrderID] = 10250


SELECT [OrderID], ([Freight] + (SELECT SUM((1 - [Discount]) * [Quantity] * [UnitPrice]) FROM [Order Details] AS [OD]
                                WHERE [OD].[OrderID] = [O].[OrderID])) AS "Full price" FROM [Orders] AS [O]


SELECT [CompanyName], [Address] FROM [Customers] WHERE [CustomerID]
NOT IN (SELECT [CustomerID] FROM [Orders] WHERE YEAR([OrderDate]) = 1997)


SELECT [ProductName] FROM [Products] AS [P1]
WHERE (SELECT COUNT([CustomerID]) FROM [Orders]
       WHERE [OrderID] IN (SELECT [OrderID] FROM [Order Details]
                           WHERE [ProductID] IN (SELECT [ProductID] FROM [Products] AS [P2]
                                                 WHERE [P1].[ProductID] = [P2].[ProductID]))) > 50
