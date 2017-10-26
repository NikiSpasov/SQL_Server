CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS NVARCHAR(10)
    BEGIN
	DECLARE @SalaryLevel VARCHAR(10);
	IF(@salary < 30000) SET @SalaryLevel = 'Low';
	ELSE IF(@salary BETWEEN 30000 AND 50000) SET @SalaryLevel = 'Average';
	ELSE SET @SalaryLevel = 'High'	
	RETURN @SalaryLevel
	END
GO

--SELECT Salary, 
--       dbo.ufn_GetSalaryLevel(Salary) 
--    AS [Salary Level] FROM Employees	
		
CREATE PROCEDURE usp_EmployeesBySalaryLevel (@SalaryLevel NVARCHAR(7))
AS
	SELECT FirstName AS [First Name], 
	        LastName AS [Last Name] 
			FROM Employees
			WHERE dbo.ufn_GetSalaryLevel(Salary) = @SalaryLevel
