SELECT FirstName, LastName, r.Description, FORMAT(OpenDate,'yyyy-MM-dd') AS OpenDate
  FROM Employees AS e
  JOIN Reports AS r ON r.EmployeeId = e.Id
  WHERE r.EmployeeId IS NOT NULL
  ORDER BY e.Id, OpenDate, r.Id