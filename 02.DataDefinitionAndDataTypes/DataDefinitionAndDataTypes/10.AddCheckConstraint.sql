USE Minions

--ALTER TABLE Users
--DROP CONSTRAINT CHK_PasswordLength

ALTER TABLE Users
ADD CONSTRAINT CHK_PassLength 
CHECK (DATALENGTH(Password) >= 5)



--INSERT INTO Users
--VALUES ('dddffd', 'kg', NULL, NULL, 1)

--TODO!