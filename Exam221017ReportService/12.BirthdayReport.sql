SELECT DISTINCT(c.Name) AS [Category Name]
 FROM Categories AS c
 JOIN Reports as r ON r.CategoryId = c.Id
 JOIN Users as u ON u.Id = r.UserId
WHERE DATEPART (DAY, u.BirthDate) = DATEPART (DAY, r.OpenDate)
  AND DATEPART(MONTH, u.BirthDate) = DATEPART (MONTH, r.OpenDate)
ORDER BY c.Name