SELECT Description, OpenDate FROM Reports
WHERE EmployeeId IS Null
ORDER BY OpenDate, Description