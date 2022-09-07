SELECT YEAR(birth_date), MONTH(birth_date), COUNT(*) FROM [juvenile] GROUP BY YEAR(birth_date), MONTH(birth_date)

SELECT [member_no], COUNT(*) FROM [loan] GROUP BY [member_no]

SELECT [adult_member_no], MAX(birth_date) FROM [juvenile] GROUP BY [adult_member_no]
