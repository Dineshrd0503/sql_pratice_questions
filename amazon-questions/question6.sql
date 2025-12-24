/*
𝐐𝟔: 𝐂𝐚𝐥𝐜𝐮𝐥𝐚𝐭𝐞 𝐭𝐡𝐞 𝐜𝐮𝐦𝐮𝐥𝐚𝐭𝐢𝐯𝐞 𝐬𝐚𝐥𝐞𝐬 𝐟𝐨𝐫 𝐞𝐚𝐜𝐡 𝐬𝐭𝐨𝐫𝐞, 𝐛𝐮𝐭 𝐨𝐧𝐥𝐲 
𝐢𝐧𝐜𝐥𝐮𝐝𝐞 𝐝𝐚𝐭𝐞𝐬 𝐰𝐡𝐞𝐫𝐞 𝐭𝐡𝐞 𝐝𝐚𝐢𝐥𝐲 𝐬𝐚𝐥𝐞𝐬 𝐞𝐱𝐜𝐞𝐞𝐝𝐞𝐝 𝐭𝐡𝐞 𝐬𝐭𝐨𝐫𝐞'𝐬 𝐚𝐯𝐞𝐫𝐚𝐠𝐞 𝐝𝐚𝐢𝐥𝐲 𝐬𝐚𝐥𝐞𝐬.
*/

WITH avg_cte AS(
SELECT
	Store_ID,AVG(Daily_Sales) as avg_sales
FROM
	Sales_Data_
GROUP BY
	Store_ID
),
filtered_cte AS(
SELECT
	s.Store_ID,s.Sale_Date,s.Daily_Sales
FROM
	Sales_Data_ s
JOIN
	avg_cte a
ON
	s.Store_ID=a.Store_ID
WHERE
	s.Daily_Sales>a.avg_sales
)
SELECT
	Store_id,Sale_Date,Daily_Sales,
	SUM(Daily_Sales) OVER(PARTITION BY Store_id ORDER BY Sale_Date) as cummu_sum
FROM
	filtered_cte
ORDER BY
	Store_ID
