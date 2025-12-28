/* 𝐐𝟒). 𝐖𝐫𝐢𝐭𝐞 𝐚 𝐪𝐮𝐞𝐫𝐲 𝐭𝐨 𝐟𝐢𝐧𝐝 𝐞𝐦𝐩𝐥𝐨𝐲𝐞𝐞𝐬 𝐞𝐚𝐫𝐧𝐢𝐧𝐠 𝐦𝐨𝐫𝐞 𝐭𝐡𝐚𝐧 𝐭𝐡𝐞𝐢𝐫 𝐦𝐚𝐧𝐚𝐠𝐞𝐫𝐬.*/

SELECT
	e1.emp_id,e1.name AS employee_name,e1.salary AS employee_salary,
	e2.name as manager_name,e2.salary as manager_salary
FROM
	employees_data e1
JOIN	
	employees_data e2
ON
	e1.manager_id=e2.emp_id
WHERE
	e1.salary>e2.salary
