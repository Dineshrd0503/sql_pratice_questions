SELECT
	e1.employee_id,e1.name as employee_name,
	e1.salary as employee_salary,e2.name as manager_name,
	e2.salary as manager_salary
FROM
	employees e1
JOIN
	employees e2
ON
	e1.manager_id=e2.employee_id
WHERE
	e1.salary>e2.salary