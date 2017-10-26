--var ?1:

   SELECT FirstLetter.FirstLett 
   FROM(
		  SELECT LEFT(FirstName, 1) 
              AS [FirstLett]
		    FROM WizzardDeposits
           WHERE DepositGroup = 'Troll Chest'
       ) AS [FirstLetter]
GROUP BY FirstLetter.FirstLett
ORDER BY FirstLetter.FirstLett


--var ?2:
  SELECT DISTINCT(LEFT(FirstName,1)) AS [FirstLetter] 
    FROM WizzardDeposits
   WHERE DepositGroup = 'Troll Chest'
GROUP BY FirstName
ORDER BY FirstLetter