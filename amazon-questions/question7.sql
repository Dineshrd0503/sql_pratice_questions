WITH dept_avg_salary AS(
	SELECT
		DeptID,AVG(Salary) as avg_sal
	FROM
		Employees_Data
	GROUP BY
		DeptID

	)

SELECT
	e.EmpID,e.EmpName,e.Salary,e.DeptID
FROM
	Employees_Data e
JOIN
	dept_avg_salary d
ON
	e.DeptID=d.DeptID
WHERE
	e.salary>d.avg_sal

