
/*
𝐐𝟏: 𝐈𝐝𝐞𝐧𝐭𝐢𝐟𝐲 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫𝐬 𝐰𝐡𝐨 𝐦𝐚𝐝𝐞 𝐩𝐮𝐫𝐜𝐡𝐚𝐬𝐞𝐬 𝐨𝐧 𝐞𝐱𝐚𝐜𝐭𝐥𝐲 𝐭𝐡𝐫𝐞𝐞
𝐝𝐢𝐟𝐟𝐞𝐫𝐞𝐧𝐭 𝐝𝐚𝐲𝐬 𝐢𝐧 𝐭𝐡𝐞 𝐥𝐚𝐬𝐭 𝐦𝐨𝐧𝐭𝐡.
*/ 
USE amazon_pratice_db;

SELECT
	CustomerID
FROM
	Purchases
GROUP BY
	CustomerID
HAVING
	COUNT( DISTINCT PurchaseDate)=3
ORDER BY
	CustomerID