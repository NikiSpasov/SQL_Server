ALTER TABLE Users
DROP CONSTRAINT PK_Users

ALTER TABLE Users
ADD CONSTRAINT PK_Id PRIMARY KEY(Id) 

ALTER TABLE Users
ADD CONSTRAINT UNQ_UserName UNIQUE(UserName)

ALTER TABLE Users
ADD CONSTRAINT CHK_LengthUsrName 
CHECK (DATALENGTH(Username) >= 3)
--TO DO!