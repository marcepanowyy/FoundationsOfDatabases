SELECT [ProductName], [UnitPrice], [Address]
FROM [Products] INNER JOIN [Suppliers] ON [Suppliers].[SupplierID] = [Products].[SupplierID]
WHERE [UnitPrice] BETWEEN 20 AND 30

SELECT [ProductName], [UnitsInStock]
FROM [Products] INNER JOIN [Suppliers] ON [Suppliers].[SupplierID] = [Products].[SupplierID]
WHERE [CompanyName] = 'Tokyo Traders'

SELECT [CompanyName], [Address] FROM [Customers]
LEFT OUTER JOIN [Orders] ON [Customers].[CustomerID] = [Orders].[CustomerID] AND YEAR([OrderDate]) = 1997
WHERE Year([OrderDate]) IS NULL

SELECT [CompanyName], [Phone] FROM [Suppliers] INNER JOIN [Products] ON [Suppliers].[SupplierID] = [Products].[SupplierID]
WHERE [UnitsInStock] = 0
