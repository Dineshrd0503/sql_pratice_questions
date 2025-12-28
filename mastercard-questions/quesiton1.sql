/*
𝐐𝟏:𝐂𝐚𝐥𝐜𝐮𝐥𝐚𝐭𝐞 𝐭𝐡𝐞 𝐏𝐫𝐨𝐝𝐮𝐜𝐭 𝐏𝐮𝐫𝐜𝐡𝐚𝐬𝐞 𝐏𝐚𝐭𝐭𝐞𝐫𝐧𝐬
*/

SELECT
	customer_id,COUNT(DISTINCT transaction_id) AS total_purchases,
	SUM(amount) AS total_spent,ROUND(AVG(amount),2) AS avg_spent_per_transaction
FROM
	transactions
GROUP BY
	customer_id
ORDER BY
	customer_id