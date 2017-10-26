
SELECT OpenDate, 
       Description, 
	   u.Email AS [Reporter Email]  
  FROM Reports as r
  LEFT JOIN Users AS u ON u.Id = r.UserId
  LEFT JOIN Departments as d ON d.Id = d.Id
  WHERE r.CloseDate IS NULL
  AND LEN(r.Description) > 20
  AND r.Description LIKE '%str%'
  AND d.Id IN(1, 4, 5)
  ORDER BY OpenDate, [Reporter Email], r.Id