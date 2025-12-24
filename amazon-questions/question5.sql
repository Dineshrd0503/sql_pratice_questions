/*
𝐐𝟓: 𝐈𝐝𝐞𝐧𝐭𝐢𝐟𝐲 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫𝐬 𝐰𝐡𝐨 𝐩𝐮𝐫𝐜𝐡𝐚𝐬𝐞𝐝 𝐩𝐫𝐨𝐝𝐮𝐜𝐭𝐬 𝐟𝐫𝐨𝐦 𝐚𝐥𝐥 𝐚𝐯𝐚𝐢𝐥𝐚𝐛𝐥𝐞 𝐜𝐚𝐭𝐞𝐠𝐨𝐫𝐢𝐞𝐬.
*/

SELECT
	c.CustomerID,c.CustomerName
FROM
	Customers_ c
JOIN
	Purchases_data_ pu
ON
	c.CustomerID=pu.CustomerID
JOIN
	Products_Data_ pr
ON
	pu.ProductID=pr.ProductID
GROUP BY	
	c.CustomerID,c.CustomerName
HAVING
(
	COUNT(DISTINCT pr.CategoryID )=(SELECT COUNT(DISTINCT CategoryID) FROM Categories_Data_)
)
ORDER BY
	c.CustomerID
	