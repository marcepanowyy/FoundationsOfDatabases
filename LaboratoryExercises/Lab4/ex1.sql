SELECT [CompanyName], [Phone] FROM [Customers]
WHERE [CustomerID] IN (SELECT [CustomerID] FROM [Orders]
                       WHERE [ShipVia] = (SELECT [ShipperID] FROM [Shippers] WHERE [CompanyName] = 'United Package')
                       AND YEAR([ShippedDate]) = 1997)
        

SELECT [Companyname], [Phone] FROM [Customers]
WHERE [CustomerID] IN (SELECT [CustomerID] FROM [Orders]
                      WHERE [OrderID] IN (SELECT [OrderID] FROM [Order Details]
                                         WHERE [ProductID] IN (SELECT [ProductID] FROM [Products]
                                                              WHERE [CategoryID] IN (SELECT [CategoryID] FROM [Categories]
                                                                                    WHERE [CategoryName] = 'Confections'))))


SELECT [Companyname], [Phone] FROM [Customers]
WHERE [CustomerID] NOT IN (SELECT [CustomerID] FROM [Orders]
                      WHERE [OrderID] IN (SELECT [OrderID] FROM [Order Details]
                                         WHERE [ProductID] IN (SELECT [ProductID] FROM [Products]
                                                              WHERE [CategoryID] IN (SELECT [CategoryID] FROM [Categories]
                                                                                    WHERE [CategoryName] = 'Confections'))))
