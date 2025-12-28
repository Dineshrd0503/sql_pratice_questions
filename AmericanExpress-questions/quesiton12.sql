/*
𝐐𝟏𝟐: 𝐅𝐨𝐫 𝐭𝐡𝐢𝐬 𝐩𝐫𝐨𝐛𝐥𝐞𝐦, 𝐰𝐞 𝐰𝐢𝐥𝐥 𝐜𝐨𝐧𝐬𝐢𝐝𝐞𝐫 𝐚 𝐦𝐚𝐧𝐚𝐠𝐞𝐫 𝐚𝐧 𝐞𝐦𝐩𝐥𝐨𝐲𝐞𝐞 𝐰𝐡𝐨 𝐡𝐚𝐬 𝐚𝐭 
𝐥𝐞𝐚𝐬𝐭 𝟏 𝐨𝐭𝐡𝐞𝐫 𝐞𝐦𝐩𝐥𝐨𝐲𝐞𝐞 𝐫𝐞𝐩𝐨𝐫𝐭𝐢𝐧𝐠 𝐭𝐨 𝐭𝐡𝐞𝐦.

𝐖𝐫𝐢𝐭𝐞 𝐚 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧 𝐭𝐨 𝐫𝐞𝐩𝐨𝐫𝐭 𝐭𝐡𝐞 𝐢𝐝𝐬 𝐚𝐧𝐝 𝐭𝐡𝐞 𝐧𝐚𝐦𝐞𝐬 𝐨𝐟 𝐚𝐥𝐥 𝐦𝐚𝐧𝐚𝐠𝐞𝐫𝐬, 
𝐭𝐡𝐞 𝐧𝐮𝐦𝐛𝐞𝐫 𝐨𝐟 𝐞𝐦𝐩𝐥𝐨𝐲𝐞𝐞𝐬 𝐰𝐡𝐨 𝐫𝐞𝐩𝐨𝐫𝐭 𝐝𝐢𝐫𝐞𝐜𝐭𝐥𝐲 𝐭𝐨 𝐭𝐡𝐞𝐦, 𝐚𝐧𝐝 𝐭𝐡𝐞 𝐚𝐯𝐞𝐫𝐚𝐠𝐞 
𝐚𝐠𝐞 𝐨𝐟 𝐭𝐡𝐞 𝐫𝐞𝐩𝐨𝐫𝐭𝐬 𝐫𝐨𝐮𝐧𝐝𝐞𝐝 𝐭𝐨 𝐭𝐡𝐞 𝐧𝐞𝐚𝐫𝐞𝐬𝐭 𝐢𝐧𝐭𝐞𝐠𝐞𝐫.

𝐑𝐞𝐭𝐮𝐫𝐧 𝐭𝐡𝐞 𝐫𝐞𝐬𝐮𝐥𝐭 𝐭𝐚𝐛𝐥𝐞 𝐨𝐫𝐝𝐞𝐫𝐞𝐝 𝐛𝐲 𝐞𝐦𝐩𝐥𝐨𝐲𝐞𝐞_𝐢𝐝.
*/

SELECT
	e1.employee_id, e1.name AS manager_name,
	COUNT(*) AS direct_reports_count,
	ROUND(AVG(e1.age),2) as avg_report_age
FROM
	Employees_ e1
JOIN	
	Employees_ e2
ON
	e1.employee_id=e2.reports_to
GROUP BY
	e1.employee_id,e1.name
