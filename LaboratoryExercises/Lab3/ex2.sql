SELECT [firstname], [lastname], [birth_date] FROM [juvenile]
INNER JOIN [member] ON [juvenile].[member_no] = [member].[member_no]

SELECT [title] FROM [title] INNER JOIN [loan] ON [loan].[title_no] = [title].[title_no]

SELECT [due_date], DATEDIFF(DAY, [in_date], [due_date]), [fine_paid] FROM [loanhist]
INNER JOIN [title] ON [loanhist].[title_no] = [title].[title_no]
WHERE [title] = 'Tao Teh King' AND [fine_paid] IS NOT NULL

SELECT [isbn] FROM [member] INNER JOIN [reservation] ON [member].[member_no] = [reservation].[member_no]
WHERE [lastname] = 'Graff' AND [firstname] = 'Stephen' AND [middleinitial] = 'A'
