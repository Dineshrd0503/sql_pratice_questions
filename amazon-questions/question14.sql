WITH cte AS(
	SELECT 
		customer_id,Sales_Date,
		ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY Sales_Date) as rn
	FROM 
		Sales_data_1
		)
	SELECT 
		c1.customer_id,c1.Sales_Date as first_sale_date,c2.Sales_Date as second_sale_date,
		DATEDIFF(DAY,c1.Sales_Date,c2.Sales_Date) as days_diff
	FROM
		cte as c1
	JOIN
		cte as c2
	ON 
		c1.customer_id=c2.customer_id
	WHERE
		c1.rn=1 AND c2.rn=2


