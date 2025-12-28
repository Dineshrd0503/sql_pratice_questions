/*
𝐐𝟖:𝐖𝐫𝐢𝐭𝐞 𝐚 𝐪𝐮𝐞𝐫𝐲 𝐭𝐨 𝐟𝐢𝐧𝐝 𝐚𝐥𝐥 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫𝐬 𝐰𝐡𝐨 𝐡𝐚𝐯𝐞 𝐧𝐨𝐭 𝐦𝐚𝐝𝐞
𝐚𝐧𝐲 𝐩𝐮𝐫𝐜𝐡𝐚𝐬𝐞𝐬 𝐢𝐧 𝐭𝐡𝐞 𝐥𝐚𝐬𝐭 𝟔 𝐦𝐨𝐧𝐭𝐡𝐬.
*/

SELECT
	DISTINCT c.customer_id,c.customer_name
FROM
	customers c
LEFT JOIN
	purchases p
ON
	c.customer_id=p.customer_id
WHERE
	p.purchase_id IS NULL



