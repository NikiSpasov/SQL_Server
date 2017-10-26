CREATE PROCEDURE usp_GetTownsStartingWith (@firstLetter VARCHAR(10))
AS
	SELECT Name FROM Towns 
	as t
	WHERE t.Name LIKE @firstLetter + '%'

--EXEC usp_GetTownsStartingWith 'b'