CREATE PROCEDURE usp_AssignProject(@emloyeeId INT,  @projectID INT)
AS 
BEGIN
	BEGIN TRANSACTION
	INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
	VALUES 
	(@emloyeeId, @projectID)
	IF (SELECT COUNT(ProjectID) 
	      FROM EmployeesProjects 
		 WHERE EmployeeID = @emloyeeId) > 3
	  BEGIN
		 ROLLBACK;
		 RAISERROR ('The employee has too many projects!', 16, 1)
  	     RETURN;
	  END

	  COMMIT;
END

EXEC usp_AssignProject 1, 21