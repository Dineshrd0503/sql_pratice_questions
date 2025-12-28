/*
𝐐𝟗:𝐇𝐨𝐰 𝐰𝐨𝐮𝐥𝐝 𝐲𝐨𝐮 𝐝𝐞𝐭𝐞𝐫𝐦𝐢𝐧𝐞 𝐭𝐡𝐞 𝐀𝐯𝐞𝐫𝐚𝐠𝐞 𝐑𝐞𝐯𝐞𝐧𝐮𝐞 𝐏𝐞𝐫 𝐔𝐬𝐞𝐫
(𝐀𝐑𝐏𝐔) 𝐟𝐫𝐨𝐦 𝐭𝐫𝐚𝐧𝐬𝐚𝐜𝐭𝐢𝐨𝐧 𝐝𝐚𝐭𝐚?
*/

SELECT
	ROUND(SUM(transaction_amount)/count(DISTINCT customer_id),2) as avrp
	FROM
	transactions_data

