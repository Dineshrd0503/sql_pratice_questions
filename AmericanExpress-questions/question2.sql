/* 𝐐𝟐)𝐖𝐫𝐢𝐭𝐞 𝐚 𝐪𝐮𝐞𝐫𝐲 𝐭𝐨 𝐟𝐞𝐭𝐜𝐡 𝐭𝐡𝐞 𝐬𝐞𝐜𝐨𝐧𝐝-𝐡𝐢𝐠𝐡𝐞𝐬𝐭 𝐬𝐚𝐥𝐚𝐫𝐲 𝐟𝐫𝐨𝐦 𝐚𝐧 𝐞𝐦𝐩𝐥𝐨𝐲𝐞𝐞 𝐭𝐚𝐛𝐥𝐞.*/

WITH cte AS(
	SELECT
	emp_id,name,salary,department,
	DENSE_RANK() OVER( ORDER BY salary DESC) AS rn
FROM
	employees
	)

SELECT
	emp_id,name,department,salary
FROM
	cte
WHERE
	rn=2