CREATE TABLE NotificationEmails(
Id INT IDENTITY,
Recipient NVARCHAR(50),
Subject NVARCHAR(50),
Body VARCHAR (200)
)
GO

CREATE TRIGGER tr_NewEmail ON Logs FOR INSERT
AS
	DECLARE @recepient INT = (SELECT AccountId FROM inserted);
	DECLARE @oldBalance money = (SELECT OldSum FROM inserted);
	DECLARE @newBalance money = (SELECT NewSum FROM inserted);
	DECLARE @subject varchar(200) = CONCAT('Balance change for account: ', @recepient);
	DECLARE @body VARCHAR(200) = CONCAT('On ', GETDATE(), ', your balance was changed from ', @oldbalance, ', to ', @newbalance, '.' ) 

	INSERT INTO NotificationEmails (Recipient, Subject, Body)
	VALUES (@recepient, @subject, @body)


	