SELECT [CompanyName], [Address] FROM [Customers] WHERE [City] = 'London'

SELECT [CompanyName], [Address] FROM [Customers] WHERE [Country] = 'France' OR [Country] = 'Spain'

SELECT [ProductName], [UnitPrice] FROM [Products] WHERE [UnitPrice] > 20.00 AND [UnitPrice] < 30.00

SELECT [ProductName], [UnitPrice] FROM [Products] WHERE [CategoryID] = 4

SELECT [ProductName], [UnitsInStock] FROM [Products] WHERE [SupplierID] = 4

SELECT [ProductName] FROM [Products] WHERE [UnitsInStock] = 0
