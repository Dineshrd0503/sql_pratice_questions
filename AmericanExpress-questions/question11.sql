
SELECT
	customer_id,
	FORMAT(transaction_date,'yyyy-MM') AS transaction_month,
	COUNT(DISTINCT credit_card_number) as no_of_cards
FROM	
	transactions_records
GROUP BY
	customer_id,FORMAT(transaction_date,'yyyy-MM')
HAVING
	COUNT(DISTINCT credit_card_number)>2


