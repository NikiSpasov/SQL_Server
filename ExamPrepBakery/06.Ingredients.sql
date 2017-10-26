SELECT Name, Description, OriginCountryId 
 FROM Ingredients AS i
WHERE OriginCountryId IN (1, 10, 20)
ORDER BY i.Id