
 SELECT c.Name AS [CategoryName],
        COUNT(d.Id) AS [Employees Number] 
   FROM Categories as c
   JOIN Departments as d ON d.Id = c.DepartmentId
   JOIN Employees as e ON e.DepartmentId = d.Id
  GROUP BY d.Id, c.Name
  ORDER BY c.Name

