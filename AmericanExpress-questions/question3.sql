SELECT
	department,
	count(*) as cnt
FROM 
	employees
GROUP BY
	department