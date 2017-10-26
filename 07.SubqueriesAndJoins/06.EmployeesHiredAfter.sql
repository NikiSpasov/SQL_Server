  USE SoftUni
  
    SELECT e.FirstName,
		   e.LastName,
		   e.HireDate,
		   d.Name As DepartmentName
      FROM Employees AS e
INNER JOIN Departments AS d
        ON (e.DepartmentID = d.DepartmentID
		AND e.HireDate > '01/01/1999'
		AND d.Name IN ('Sales', 'Finance'))
   ORDER BY HireDate