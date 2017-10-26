    SELECT e.EmployeeID,
	       e.FirstName,
	       e.ManagerID,
	       e2.FirstName AS [ManagerName]
	  FROM Employees AS [e]
INNER JOIN Employees AS [e2]
        ON (e2.EmployeeID = e.ManagerID
       AND e.ManagerID IN (3, 7))
  ORDER BY e.EmployeeID ASC
