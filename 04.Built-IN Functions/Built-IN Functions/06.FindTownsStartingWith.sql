USE SoftUni

SELECT TownID, Name 
 FROM Towns
WHERE SUBSTRING(Name, 1, 1) IN ('M', 'K', 'B', 'E')
-- OR WHERE Name LIKE 'M%' OR Name LIKE 'K%' OR Name LIKE 'B%' OR Name LIKE'E%'
ORDER BY Name