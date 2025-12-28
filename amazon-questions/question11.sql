/*
𝐐𝟏𝟏: 𝐂𝐚𝐥𝐜𝐮𝐥𝐚𝐭𝐞 𝐭𝐡𝐞 𝐦𝐨𝐯𝐢𝐧𝐠 𝐚𝐯𝐞𝐫𝐚𝐠𝐞 𝐨𝐟 𝐬𝐚𝐥𝐞𝐬 𝐟𝐨𝐫 𝐞𝐚𝐜𝐡 𝐩𝐫𝐨𝐝𝐮𝐜𝐭 𝐨𝐯𝐞𝐫 𝐚 𝟕-𝐝𝐚𝐲 𝐰𝐢𝐧𝐝𝐨𝐰.
*/

SELECT 
	sale_id,product_id,
	AVG(sales_amount) OVER(PARTITION BY product_id ORDER BY sale_date) as avg_sales
FROM
	product_sales