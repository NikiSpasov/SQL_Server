
  
  SELECT m.ModelId, m.Name, 
            CONCAT (AVG(ISNULL (DATEDIFF(DAY, j.IssueDate, j.FinishDate), 0)), ' ', 'days')
                   AS [Average Service Time] 
            FROM Models as m
            JOIN Jobs as j
            ON j.ModelId = m.ModelId
			GROUP BY m.ModelId, m.Name
			ORDER BY [Average Service Time]  