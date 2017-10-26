SELECT c.Name AS [CategoryName],
	COUNT (r.CategoryId) AS [ReportsNumber] 
  FROM Categories as c
  JOIN Reports as r on r.CategoryId = c.Id
  GROUP BY c.Name
  ORDER BY ReportsNumber DESC, c.Name
