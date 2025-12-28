/*
𝐐𝟏𝟎: 𝐖𝐫𝐢𝐭𝐞 𝐚 𝐪𝐮𝐞𝐫𝐲 𝐭𝐨 𝐜𝐚𝐥𝐜𝐮𝐥𝐚𝐭𝐞 𝐘𝐨𝐘 (𝐘𝐞𝐚𝐫-𝐨𝐯𝐞𝐫-𝐘𝐞𝐚𝐫) 𝐠𝐫𝐨𝐰𝐭𝐡
𝐟𝐨𝐫 𝐚 𝐬𝐞𝐭 𝐨𝐟 𝐭𝐫𝐚𝐧𝐬𝐚𝐜𝐭𝐢𝐨𝐧𝐬.
*/



WITH cte AS(
	SELECT
		YEAR(transaction_date) as year,
		SUM(transaction_amount) as total_revenue,
		LAG(SUM(transaction_amount)) OVER(ORDER BY YEAR(transaction_date)) as prev_year_amount
	FROM
		transactions_
	GROUP BY
		YEAR(transaction_date)


)
SELECT
	year,total_revenue,prev_year_amount,
	ROUND((total_revenue-prev_year_amount)/prev_year_amount*100,2) AS yoy_growth_percentage
FROM
	cte