SELECT [EmployeeID], COUNT([OrderID]) FROM [Orders] GROUP BY [EmployeeID]

SELECT [ShipVia], SUM([Freight]) FROM [Orders] GROUP BY [ShipVia]

SELECT [ShipVia], SUM([Freight]) FROM [Orders] WHERE YEAR([ShippedDate]) in (1996, 1997) GROUP BY [ShipVia]

SELECT [EmployeeID], MONTH([RequiredDate]) AS [MTH], YEAR([RequiredDate]) AS [Y], COUNT([OrderID]) AS [CNT] FROM [Orders]
GROUP BY [EmployeeID], MONTH([RequiredDate]), YEAR([RequiredDate])

SELECT [CategoryID], MIN([UnitPrice]) AS [MINI], MAX([UnitPrice]) AS [MAXI] FROM [Products] GROUP BY [CategoryID]
