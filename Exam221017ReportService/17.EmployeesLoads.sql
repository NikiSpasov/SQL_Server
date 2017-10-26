USE ReportService

CREATE FUNCTION udf_GetReportsCount(@employeeId INT, @statusId INT)
RETURNS INT
AS
BEGIN
	DECLARE @count INT
	SET @count =
	(SELECT COUNT(*) FROM Employees as e
	JOIN Reports AS r ON r.EmployeeId = e.Id
	WHERE r.EmployeeId = @employeeId
	AND r.StatusId = @statusId
	GROUP BY EmployeeId)
	RETURN @count;
END
GO
