SELECT [title_no], [title] FROM [title]

SELECT [title_no], [title] FROM [title] WHERE [title_no] = 10

SELECT [member_no], [fine_assessed] FROM [loanhist] WHERE [fine_assessed] BETWEEN 8 AND 9

SELECT [title_no], [author] FROM [title] WHERE [author] = 'Charles Dickens' OR [author] = 'Jane Austen'

SELECT [title_no], [title] FROM [title] WHERE [title] LIKE '%adventures%'

SELECT [title_no], [fine_assessed], [fine_paid] FROM [loanhist] WHERE ([fine_paid] IS NULL OR [fine_paid] = 0)

SELECT DISTINCT [city], [state] FROM [adult]
