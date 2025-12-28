/*
𝐐𝟏𝟒)𝐓𝐨𝐩 𝐃𝐞𝐩𝐚𝐫𝐭𝐦𝐞𝐧𝐭 𝐒𝐚𝐥𝐚𝐫𝐢𝐞𝐬

𝐈𝐦𝐚𝐠𝐢𝐧𝐞 𝐲𝐨𝐮 𝐡𝐚𝐝 𝐚 𝐭𝐚𝐛𝐥𝐞 𝐨𝐟 𝐂𝐚𝐩𝐢𝐭𝐚𝐥 𝐎𝐧𝐞 𝐞𝐦𝐩𝐥𝐨𝐲𝐞𝐞 𝐬𝐚𝐥𝐚𝐫𝐲 𝐝𝐚𝐭𝐚.
𝐖𝐫𝐢𝐭𝐞 𝐚 𝐒𝐐𝐋 𝐪𝐮𝐞𝐫𝐲 𝐭𝐨 𝐟𝐢𝐧𝐝 𝐭𝐡𝐞 𝐭𝐨𝐩 𝟑 𝐡𝐢𝐠𝐡𝐞𝐬𝐭 𝐞𝐚𝐫𝐧𝐢𝐧𝐠 𝐞𝐦𝐩𝐥𝐨𝐲𝐞𝐞𝐬 𝐰𝐢𝐭𝐡𝐢𝐧 𝐞𝐚𝐜𝐡 𝐝𝐞𝐩𝐚𝐫𝐭𝐦𝐞𝐧𝐭.
*/

WITH cte AS(
SELECT
	c.employee_id,c.name,
	c.salary,d.department_name,
	DENSE_RANK() OVER(PARTITION BY d.department_name ORDER BY c.salary DESC) as rn
FROM	
	CapitalOne_Employees c
JOIN
	Department d
ON
	c.department_id=d.department_id


)

SELECT
	employee_id,name,salary,department_name
FROM
	cte
WHERE rn<=3
