CREATE TABLE Deleted_Employees
(EmployeeId INT IDENTITY,
FirstName VARCHAR(50),
LastName VARCHAR(50), 
MiddleName VARCHAR(50),
JobTitle VARCHAR(50), 
DepartmentId INT,
Salary DECIMAL (18,2)
CONSTRAINT PK_EmployeeId 
PRIMARY KEY(EmployeeId))
GO

CREATE TRIGGER tr_OnEmployeesDelete ON Employees FOR DELETE  
AS
BEGIN
 DECLARE @firstName VARCHAR (50);
 DECLARE @lastName VARCHAR (50);
 DECLARE @middleName VARCHAR (50);
 DECLARE @jobTitle VARCHAR (50);
 DECLARE @departmentID INT;
 DECLARE @salary DECIMAL (18, 2); 

 SET @firstName = (SELECT FirstName FROM deleted);
 SET @lastName = (SELECT LastName FROM deleted);
  SET @middleName = (SELECT MiddleName FROM deleted);
 SET @jobTitle = (SELECT JobTitle FROM deleted);
 SET @departmentID = (SELECT DepartmentID FROM deleted);
 SET @salary = (SELECT Salary FROM deleted);

INSERT INTO Deleted_Employees (firstName, lastName, middleName, jobTitle, departmentId, salary)
VALUES
(@firstName, @lastName, @middleName, @jobTitle, @departmentID, @salary)
END


DELETE FROM Employees
WHERE HireDate > '2000/01/01'