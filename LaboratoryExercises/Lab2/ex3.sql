SELECT [OrderID], COUNT([ProductID]) FROM [Order Details] GROUP BY [OrderID] HAVING COUNT([ProductID]) > 5 

SELECT [CustomerID], SUM([Freight]) AS [FreightSum], COUNT([OrderID]) FROM [Orders]
WHERE YEAR([ShippedDate]) = 1998
GROUP BY [CustomerID]
HAVING COUNT([OrderID]) > 8
ORDER BY [FreightSum] DESC

SELECT TOP 1 DATENAME([WEEKDAY], [OrderDate]), COUNT([OrderID]) FROM [Orders]
GROUP BY DATENAME([WEEKDAY], [OrderDate]) ORDER BY 2

SELECT AVG(DATEDIFF(DAY, [OrderDate], [ShippedDate])) AS AVERAGE, MIN(DATEDIFF(DAY, [OrderDate], [ShippedDate])) AS MINI, MAX(DATEDIFF(DAY, [OrderDate], [ShippedDate])) AS MAXI FROM [Orders] WHERE [ShippedDate] <= [RequiredDate]

SELECT [productid], [orderid], SUM([quantity]) AS [total_quantity] FROM [orderhist]
GROUP BY [productid], [orderid] with cube

SELECT [productid], [orderid], SUM([quantity]) AS [total_quantity] FROM [orderhist]
GROUP BY [productid], [orderid] with rollup
