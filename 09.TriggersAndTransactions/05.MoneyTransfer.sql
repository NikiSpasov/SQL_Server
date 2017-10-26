CREATE PROCEDURE usp_TransferMoney(@senderId INT, @receiverId INT, @amount INT)
AS
BEGIN
 BEGIN TRANSACTION
	EXEC dbo.usp_WithdrawMoney @senderId, @amount;
	EXEC dbo.usp_DepositMoney @receiverId, @amount;
	IF (SELECT Balance FROM Accounts
	    WHERE Id = @senderId) < @amount
		BEGIN
		  ROLLBACK;
		  RAISERROR ('Insuficient amount', 1, 16);
		  RETURN;
		END
	COMMIT;
 END 

 EXEC usp_DepositMoney 1, 3000

 EXEC dbo.usp_TransferMoney 1, 2, 150