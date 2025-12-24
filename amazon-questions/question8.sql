SELECT
	s.ProductID AS Sold_ProductID,
	COUNT(s.ProductID) AS Missing_Product_Sale_cnt
FROM
	Sales_details s
LEFT JOIN
	Products_details p
ON
	s.ProductID=p.productID
WHERE
	s.ProductID NOT IN(
		SELECT ProductID FROM Products_details)
GROUP BY
	s.ProductID
