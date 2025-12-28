/*
𝐐𝟏:𝐖𝐫𝐢𝐭𝐞 𝐚 𝐪𝐮𝐞𝐫𝐲 𝐭𝐨 𝐟𝐢𝐧𝐝 𝐝𝐮𝐩𝐥𝐢𝐜𝐚𝐭𝐞 𝐫𝐨𝐰𝐬 𝐢𝐧 𝐚 𝐭𝐚𝐛𝐥𝐞.
*/

SELECT
	name,department,count(*) as cnt
FROM
	employees
GROUP BY
	name,department
HAVING
	count(*)>1