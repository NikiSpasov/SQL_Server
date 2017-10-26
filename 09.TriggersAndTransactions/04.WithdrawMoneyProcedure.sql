
CREATE PROCEDURE usp_WithdrawMoney (@accountId INT, @moneyAmount MONEY)
AS
BEGIN
  BEGIN TRANSACTION
	UPDATE Accounts
	SET Balance -= @moneyAmount
	WHERE Id = @accountId
	
	IF(@@ROWCOUNT <> 1)
	BEGIN    
	 ROLLBACK;
	 RAISERROR ('Invalid account!', 16, 1);
	 RETURN;
    END

	IF(SELECT Balance FROM Accounts 
	   WHERE Id = @accountId) < @moneyAmount
	BEGIN
	 ROLLBACK;
	 RAISERROR ('Insufficient funds!', 16, 1)
	 RETURN;
	END 

	COMMIT;

END
 
EXEC usp_WithdrawMoney 1, 10