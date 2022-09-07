SELECT [OrderID], MAX([UnitPrice]) AS MAXI FROM [Order Details] GROUP BY [OrderID] ORDER BY MAXI

SELECT [OrderID], MIN([UnitPrice]) AS MINI, MAX([UnitPrice]) AS MAXI FROM [Order Details] GROUP BY [OrderID]

SELECT [ShipVia], COUNT([OrderID]) FROM [Orders] GROUP BY [ShipVia]

SELECT TOP 1 [ShipVia], COUNT([OrderID]) AS Activity FROM [Orders] WHERE YEAR([ShippedDate]) = 1997 GROUP BY [ShipVia] ORDER BY [Activity] DESC
