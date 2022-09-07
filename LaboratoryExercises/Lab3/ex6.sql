SELECT ([firstname] + ' ' + [lastname]) AS 'name', CONCAT([street], ' ', [city], ' ', [state], ' ', [zip]) AS 'address' FROM [member]
INNER JOIN [adult] ON [member].[member_no] = [adult].[member_no]

SELECT [item].[isbn], [copy_no], [on_loan], [title], [translation], [cover] FROM [item]
INNER JOIN [copy] ON [item].[isbn] = [copy].[isbn]
INNER JOIN [title] ON [title].[title_no] = [item].[title_no]
WHERE [item].[isbn] IN (1, 500, 1000)

SELECT [member].[member_no], [firstname], [lastname], [isbn], [log_date] FROM [member]
LEFT OUTER JOIN [reservation] ON [member].[member_no] = [reservation].[member_no]
WHERE [member].[member_no] IN (250, 342, 1675)

SELECT [adult].[member_no] FROM [adult]
INNER JOIN [juvenile] ON [adult].[member_no] = [juvenile].[adult_member_no]
GROUP BY [adult].[member_no] HAVING COUNT([adult].[member_no]) > 2

SELECT [adult].[member_no] FROM [adult]
INNER JOIN [juvenile] ON [adult].[member_no] = [juvenile].[adult_member_no]
WHERE [state] = 'AZ'
GROUP BY [adult].[member_no] HAVING COUNT([adult].[member_no]) > 2
UNION
SELECT [adult].[member_no] FROM [adult]
INNER JOIN [juvenile] ON [adult].[member_no] = [juvenile].[adult_member_no]
WHERE [state] = 'CA'
GROUP BY [adult].[member_no] HAVING COUNT([adult].[member_no]) > 3
