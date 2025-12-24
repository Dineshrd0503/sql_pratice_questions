
SELECT
	s.SupplierID,s.SupplierName
FROM
	Suppliers_Data s
JOIN
	Deliveries d
ON
	s.SupplierID=d.SupplierID
WHERE
	d.Quantity>100
GROUP BY
	s.SupplierID,s.SupplierName
HAVING
	AVG(DATEDIFF(DAY,OrderDate,DeliveryDate))<2