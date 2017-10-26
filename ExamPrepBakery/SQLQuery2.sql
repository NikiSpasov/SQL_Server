SELECT TOP 15
       i.Name, i.Description, c.Name AS [CountryName]
	   FROM Ingredients as i
	   Join Countries as c ON i.OriginCountryId = c.Id 
	   WHERE c.Name IN ('Greece', 'Bulgaria')
	   ORDER BY i.Name, c.Name