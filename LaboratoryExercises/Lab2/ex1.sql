SELECT [UnitPrice] * [Quantity] * (1 - [Discount]) AS Cena FROM [Order Details] WHERE [OrderID] = 10250

-- two versions
SELECT CONCAT([Phone], ', ', [Fax]) FROM [Suppliers]

SELECT ISNULL([Phone], '') + ', ' + ISNULL([Fax], '') FROM [Suppliers]

SELECT COUNT([ProductID]) FROM [Products] WHERE [UnitPrice] < 10 OR [UnitPrice] > 20

SELECT MAX(UnitPrice) FROM [Products] WHERE [UnitPrice] < 20

SELECT MAX(UnitPrice), MIN(UnitPrice), AVG(UnitPrice) FROM [Products] WHERE [QuantityPerUnit] LIKE '%bottle%'

SELECT * FROM [Products] WHERE [UnitPrice] > (SELECT AVG([UnitPrice]) FROM [Products])

SELECT SUM([UnitPrice] * [Quantity] * (1 - [Discount])) FROM [Order Details] WHERE [OrderID] = 10250
