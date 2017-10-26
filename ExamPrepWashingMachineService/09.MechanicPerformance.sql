SELECT CONCAT (FirstName, ' ', LastName) AS [Mechanic],
  AVG (DATEDIFF(DAY, j.IssueDate, j.FinishDate)) 
    AS [Average Days]
  FROM Mechanics AS m
  JOIN Jobs as [j]
  ON (m.MechanicId = j.MechanicId
  AND j.FinishDate IS NOT NULL)
  GROUP BY FirstName, LastName, m.MechanicId
  ORDER BY m.MechanicId