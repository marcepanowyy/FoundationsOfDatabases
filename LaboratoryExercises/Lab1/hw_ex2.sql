SELECT [title] FROM [title] ORDER BY title

SELECT [member_no], [isbn], [fine_assessed], 2 * [fine_assessed] AS 'double fine' FROM [loanhist] WHERE [fine_assessed] IS NOT NULL AND [fine_assessed] != 0

SELECT [firstname] + ' ' + [middleinitial] + ' ' + [lastname] AS 'email_name' FROM [member] WHERE [lastname] = 'Anderson'

SELECT LOWER([firstname] + [middleinitial] + SUBSTRING([lastname], 1, 2)) FROM [member]
-- two version
SELECT 'The title is: ' + [title] + ', title number ' + CAST([title_no] AS char) FROM [title]

SELECT 'The title is: ' + [title] + ', title number ' + CONVERT(char, [title_no]) FROM [title]
