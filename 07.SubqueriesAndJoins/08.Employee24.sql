   SELECT 
		  e.EmployeeID,
		  e.FirstName,
	    (
		CASE 
		WHEN p.StartDate >= '01.01.2005' THEN 'NULL'
		ELSE p.Name
		END
		)
		-- this is equal to: IIF (p.StartDate > '2005-01-01', NULL, p.Name)
	  AS [ProjectName]
	FROM Employees AS [e]
    JOIN EmployeesProjects AS [ep]
      ON (ep.EmployeeID = e.EmployeeID
     AND e.EmployeeID = 24)
    JOIN Projects AS [p]
      ON (p.ProjectID = ep.ProjectID)