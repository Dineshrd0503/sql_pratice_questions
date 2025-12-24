USE amazon_pratice_db;/* 𝐐𝟐) 
𝐅𝐢𝐧𝐝 𝐭𝐡𝐞 𝐭𝐨𝐩 𝟐 𝐡𝐢𝐠𝐡𝐞𝐬𝐭-𝐬𝐞𝐥𝐥𝐢𝐧𝐠 𝐩𝐫𝐨𝐝𝐮𝐜𝐭𝐬 𝐟𝐨𝐫 𝐞𝐚𝐜𝐡 𝐜𝐚𝐭𝐞𝐠𝐨𝐫𝐲.
*/
WITH cte AS(
	SELECT
		p.ProductId,p.ProductName,c.CategoryID,c.CategoryName,
		SUM(s.Quantity*s.Price) as Total_Amount,
		ROW_NUMBER() OVER(PARTITION BY c.CategoryID ORDER BY
		SUM(s.quantity*s.price) DESC) AS rn
	FROM
		Products p
	JOIN Categories c
	ON p.CategoryID=c.CategoryID
	JOIN Sales s
	ON p.ProductID=s.ProductID
	GROUP BY
		p.ProductId,p.ProductName,c.CategoryID,c.CategoryName
)
SELECT
	CategoryName,ProductName,Total_Amount
FROM 
	cte
WHERE
	rn<=2
ORDER BY
	CategoryName
	