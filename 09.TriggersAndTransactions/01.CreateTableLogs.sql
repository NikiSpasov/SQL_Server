
CREATE TABLE Logs(
LogId INT PRIMARY KEY IDENTITY,
AccountId INT,
OldSum DECIMAL (18, 2),
NewSum DECIMAL (18, 2),
CONSTRAINT FK_Logs_Account 
FOREIGN KEY (AccountId) REFERENCES Accounts(Id)
)
GO

CREATE TRIGGER tr_AccountUpdate ON Accounts FOR UPDATE
AS
	DECLARE @accountId int = (SELECT Id FROM inserted)
	DECLARE @oldBalance money = (Select Balance FROM deleted)
	DECLARE @newBalance money = (SELECT Balance FROM inserted)
	
	IF(@newBalance <> @oldBalance)
	INSERT INTO Logs VALUES (@accountId, @oldBalance, @newBalance)
	