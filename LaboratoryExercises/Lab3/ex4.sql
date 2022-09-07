SELECT M.[firstname], M.[lastname], [birth_date], [street] + ', ' + [city] AS [Address] FROM [juvenile]
INNER JOIN [member] AS M ON M.[member_no] = [juvenile].[member_no]
INNER JOIN [adult] ON [adult].[member_no] = [juvenile].[adult_member_no]


SELECT (J_M.[firstname] + ' ' + J_M.[lastname]) AS [Child], [birth_date], [street] + ', ' + [city] AS [Address],
(A_M.[firstname] + ' ' + A_M.[lastname]) AS [Parent] FROM [juvenile]
INNER JOIN [member] AS J_M ON J_M.[member_no] = [juvenile].[member_no]
INNER JOIN [adult] AS A ON A.[member_no] = [juvenile].[adult_member_no]
INNER JOIN [member] AS A_M ON [juvenile].[adult_member_no] = A_M.[member_no]


SELECT DISTINCT [adult].[member_no], CONCAT([street], ' ', [city], ' ', [state], ' ', [zip]) FROM [adult]
INNER JOIN [juvenile] ON [adult].[member_no] = [juvenile].[adult_member_no]
WHERE [birth_date] < '1996-01-01'


SELECT DISTINCT [adult].[member_no], CONCAT([street], ' ', [city], ' ', [state], ' ', [zip]) FROM [adult]
INNER JOIN [juvenile] ON [adult].[member_no] = [juvenile].[adult_member_no]
INNER JOIN [member] ON [member].[member_no] = [adult].[member_no]
LEFT OUTER JOIN [loan] ON [member].[member_no] = [loan].[member_no]
WHERE [birth_date] < '1996-01-01' AND [loan].[member_no] IS NULL
ORDER BY [adult].[member_no]
