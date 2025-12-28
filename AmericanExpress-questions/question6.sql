SELECT
	*,
	SUM(transaction_amount) OVER(ORDER BY transaction_date) as cumulative_sales
FROM
	transactions