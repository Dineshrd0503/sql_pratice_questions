/* 𝐐𝟒)
𝐅𝐢𝐧𝐝 𝐞𝐦𝐩𝐥𝐨𝐲𝐞𝐞𝐬 𝐰𝐡𝐨 𝐡𝐚𝐯𝐞 𝐧𝐞𝐯𝐞𝐫 𝐛𝐞𝐞𝐧 𝐚 𝐦𝐚𝐧𝐚𝐠𝐞𝐫 𝐚𝐧𝐝 𝐡𝐚𝐯𝐞 𝐰𝐨𝐫𝐤𝐞𝐝 𝐢𝐧 𝐦𝐨𝐫𝐞
𝐭𝐡𝐚𝐧 𝐨𝐧𝐞 𝐝𝐞𝐩𝐚𝐫𝐭𝐦𝐞𝐧𝐭.
*/

SELECT
    e.EmpID,
    e.EmpName
FROM
    Employees e
JOIN
    Emp_Dept d ON e.EmpID = d.EmpID
WHERE
    e.EmpID NOT IN (SELECT m.EmpID FROM Managers m)
GROUP BY
    e.EmpID,
    e.EmpName
HAVING
    COUNT(DISTINCT d.DeptID) > 1
ORDER BY
    e.EmpID;
