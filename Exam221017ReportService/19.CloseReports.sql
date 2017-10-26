use ReportService

CREATE TRIGGER tr_ChangeStatusToCompleted ON Reports 
AFTER UPDATE
AS 
BEGIN
	  DECLARE @CLOSEDate DATETIME = (SELECT CloseDate FROM inserted)
	  DECLARE @OpenDate DATETIME = (SELECT OpenDate FROM inserted)
	  IF @CLOSEDate < @OpenDate
		ROLLBACK
		RETURN
      DECLARE @Id INT =  (SELECT Id FROM inserted)
	  UPDATE Reports
	  SET StatusId = 3
	  WHERE Id = @Id
END