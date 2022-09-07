SELECT [ProductName], [UnitPrice], [Address] FROM [Products]
INNER JOIN [Suppliers] ON [Products].[SupplierID] = [Suppliers].[SupplierID]
INNER JOIN [Categories] ON [Categories].[CategoryID] = [Products].[CategoryID]
WHERE [UnitPrice] BETWEEN 20 AND 30 AND [CategoryName] = 'Meat/Poultry'


SELECT [ProductName], [CompanyName], [UnitPrice] FROM [Products]
INNER JOIN [Categories] ON [Categories].[CategoryID] = [Products].[CategoryID]
INNER JOIN [Suppliers] ON [Suppliers].[SupplierID] = [Products].[SupplierID]
WHERE [CategoryName] = 'Confections'


SELECT DISTINCT [Customers].[CompanyName], [Customers].[Phone] FROM [Customers]
INNER JOIN [Orders] ON [Orders].[CustomerID] = [Customers].[CustomerID]
INNER JOIN [Shippers] ON [Shippers].[ShipperID] = [Orders].[ShipVia]
WHERE YEAR([ShippedDate]) = 1997 AND [Shippers].[CompanyName] = 'United Package'


SELECT DISTINCT [CompanyName], [Phone] FROM [Customers]
INNER JOIN [Orders] ON [Orders].[CustomerID] = [Customers].[CustomerID]
INNER JOIN [Order Details] ON [Orders].[OrderID] = [Order Details].[OrderID]
INNER JOIN [Products] ON [Products].[ProductID] = [Order Details].[ProductID]
INNER JOIN [Categories] ON [Categories].[CategoryID] = [Products].[CategoryID]
WHERE [CategoryName] = 'Confections'
