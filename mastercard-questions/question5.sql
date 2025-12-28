SELECT
	FORMAT(transaction_date,'yyyy-MM-dd'),
	SUM(amount) as total_amount
FROM
	transactions_data
GROUP BY
	FORMAT(transaction_date,'yyyy-MM-dd')