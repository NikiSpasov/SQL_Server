SELECT CONCAT(FirstName, ' ', LastName) AS			   [Mechanic],
       j.Status,
	   j.IssueDate
 FROM Mechanics as m
 JOIN Jobs as j
   ON m.MechanicId = j.MechanicId
ORDER BY m.MechanicId, j.IssueDate, j.JobId
