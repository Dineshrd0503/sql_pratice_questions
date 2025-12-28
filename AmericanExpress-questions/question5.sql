/*
𝐐𝟓:𝐖𝐫𝐢𝐭𝐞 𝐚 𝐪𝐮𝐞𝐫𝐲 𝐭𝐨 𝐢𝐝𝐞𝐧𝐭𝐢𝐟𝐲 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫𝐬 𝐰𝐡𝐨 𝐡𝐚𝐯𝐞 𝐦𝐚𝐝𝐞
𝐭𝐫𝐚𝐧𝐬𝐚𝐜𝐭𝐢𝐨𝐧𝐬 𝐚𝐛𝐨𝐯𝐞 $𝟓,𝟎𝟎𝟎 𝐦𝐮𝐥𝐭𝐢𝐩𝐥𝐞 𝐭𝐢𝐦𝐞𝐬.
*/

SELECT
	customer_id,
	COUNT(*) AS high_value_txn_count 
FROM
	transactions
WHERE
	transaction_amount>5000
GROUP BY
	customer_id
HAVING
	count(*)>1

	