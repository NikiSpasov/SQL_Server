USE SoftUni

  SELECT TownID, Name 
    FROM Towns
	WHERE Name NOT LIKE 'R%' AND Name NOT LIKE 'B%' AND Name NOT LIKE 'D%'
   --WHERE SUBSTRING(Name, 1, 1) NOT IN ('R', 'B', 'D')
ORDER BY Name