
--CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan @number DECIMAL (18, 4)
--AS
--BEGIN
--    SELECT FirstName AS [First Name], LastName AS [Last Name]
--    FROM [dbo].[AccountHolders] AS ah
--	INNER JOIN Accounts AS a
--	ON a.Id = ah.Id
--	WHERE a.Balance > @number
--	GROUP BY ah.FirstName, ah.LastName 
--	ORDER BY ah.LastName, ah.FirstName
--END
--EXEC usp_GetHoldersWithBalanceHigherThan 0

CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan (@minBalance money)
AS
BEGIN
  WITH CTE_MinBalanceAccountHolders (HolderId) AS (
    SELECT AccountHolderId FROM Accounts
    GROUP BY AccountHolderId
    HAVING SUM(Balance) > @minBalance
  )

  SELECT ah.FirstName AS [First Name], ah.LastName AS [Last Name]
  FROM CTE_MinBalanceAccountHolders AS minBalanceHolders 
  JOIN AccountHolders AS ah ON ah.Id = minBalanceHolders.HolderId
  ORDER BY ah.LastName, ah.FirstName 

END