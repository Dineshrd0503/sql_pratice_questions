SELECT
	e1.employee_id,e1.name as employee_name
FROM
	employees e1
JOIN
	employees e2
ON
	e1.manager_id=e2.employee_id
WHERE
	e1.salary>e2.salary