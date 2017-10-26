CREATE FUNCTION ufn_IsWordComprised(@setOfLetters NVARCHAR(max), @word NVARCHAR(MAX))
RETURNS BIT
AS
BEGIN
	DECLARE @isComprised BIT = 0;
	DECLARE @currentIndex INT =1;
	DECLARE @currentChar CHAR;

	WHILE(@currentIndex <= LEN(@word))
	BEGIN
		SET @currentChar = SUBSTRING(@word, @currentIndex, 1);
		IF(CHARINDEX(@currentChar, @setOfLetters) = 0)
		RETURN @isComprised;
		SET @currentIndex += 1;
		END
		RETURN @isComprised + 1;
END
 
	 