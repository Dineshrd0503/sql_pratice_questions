/*
𝐐𝟏𝟐: 𝐑𝐚𝐧𝐤 𝐬𝐭𝐨𝐫𝐞𝐬 𝐛𝐲 𝐭𝐡𝐞𝐢𝐫 𝐦𝐨𝐧𝐭𝐡𝐥𝐲 𝐬𝐚𝐥𝐞𝐬 𝐩𝐞𝐫𝐟𝐨𝐫𝐦𝐚𝐧𝐜𝐞.
*/

/*
𝐐𝟏𝟐: 𝐑𝐚𝐧𝐤 𝐬𝐭𝐨𝐫𝐞𝐬 𝐛𝐲 𝐭𝐡𝐞𝐢𝐫 𝐦𝐨𝐧𝐭𝐡𝐥𝐲 𝐬𝐚𝐥𝐞𝐬 𝐩𝐞𝐫𝐟𝐨𝐫𝐦𝐚𝐧𝐜𝐞.
*/


SELECT
	MONTH(sale_date) as month_,
	store_id,store_name,SUM(sales_amount) as total_amount,
	ROW_NUMBER() OVER(PARTITION BY MONTH(sale_date) ORDER BY SUM(sales_amount) DESC) AS rnk
FROM
	store_sales
GROUP BY
	MONTH(sale_date),store_id,store_name
ORDER BY
	month_,rnk 

