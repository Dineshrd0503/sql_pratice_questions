/* 𝐐𝟑)
𝐃𝐞𝐭𝐞𝐜𝐭 𝐚𝐧𝐨𝐦𝐚𝐥𝐢𝐞𝐬 𝐰𝐡𝐞𝐫𝐞 𝐬𝐚𝐥𝐞𝐬 𝐟𝐨𝐫 𝐚 𝐩𝐫𝐨𝐝𝐮𝐜𝐭 𝐚𝐫𝐞 𝟓𝟎% 𝐥𝐨𝐰𝐞𝐫 𝐭𝐡𝐚𝐧 𝐭𝐡𝐞 𝐚𝐯𝐞𝐫𝐚𝐠𝐞 𝐟𝐨𝐫
𝐭𝐡𝐚𝐭 𝐩𝐫𝐨𝐝𝐮𝐜𝐭
*/


WITH CTE AS(
SELECT
	p.ProductID,p.ProductName,s.saleAmount,
	AVG(s.saleAmount) OVER(PARTITION BY p.productID ) as avg_sales
FROM
	Products_ p
JOIN
	Sales_Data s
ON	
	p.ProductID=s.ProductID
GROUP BY
	p.ProductID,p.ProductName,s.SaleAmount
	)
SELECT 
	ProductId,ProductName,saleAmount as salesamount,avg_sales
FROM
	cte
WHERE
	(saleAmount<0.5*avg_sales)



