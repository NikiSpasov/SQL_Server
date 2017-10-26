SELECT TOP 3 
CONCAT (m.FirstName, ' ', m.LastName) AS [Mechanic],
	COUNT (*) AS jobs 	
  FROM Mechanics as m
  JOIN Jobs as j ON j.MechanicId = m.MechanicId
  WHERE j.Status <> 'Finished'
  GROUP BY m.MechanicId, CONCAT (m.FirstName, ' ', m.LastName)
  HAVING COUNT (*) > 1
  ORDER BY jobs DESC, m.MechanicId ASC