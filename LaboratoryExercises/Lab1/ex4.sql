SELECT [ProductName] FROM [Products] WHERE [UnitPrice] > 20 OR [UnitPrice] < 10

SELECT [ProductName], [UnitPrice] FROM [Products] WHERE [UnitPrice] BETWEEN 20.00 AND 30.00

SELECT [CompanyName], [Country] FROM [Customers] WHERE [Country] in ('UK', 'Italy')

SELECT [CompanyName], [Fax] FROM [Suppliers] WHERE [Fax] IS NOT NULL

SELECT [OrderID], [OrderDate], [CustomerID] FROM [Orders] WHERE [ShipCountry] ='Argentina' AND ([ShippedDate] IS NULL OR GETDATE() < [ShippedDate])
