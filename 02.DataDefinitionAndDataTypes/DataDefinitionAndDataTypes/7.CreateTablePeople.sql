CREATE TABLE People (
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(225) NOT NULL,
Picture VARBINARY CHECK(DATALENGTH(Picture)<900*1024),
Height DECIMAL(10, 2),
Weight DECIMAL(10, 2),
Gender VARCHAR(1) NOT NULL 
Check(Gender = 'm' or Gender = 'f'),
Birthdate DATE NOT NULL,
Biography NVARCHAR(MAX)
)

INSERT INTO People (Name, Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES 
('Peter',NULL, 2,522, 'f', '01/01/1980', 'co-worker'),
('Vankata', NULL, NULL,3.6, 'm', '01/01/1980', 'captain'),
('Muckata', NULL, NULL,7.8, 'f', '01/01/1980', 'Driver'),
('Trupkata', NULL, NULL,20.22, 'm', '01/01/1980', 'Pilot'),
('Goshkata', NULL, NULL,31.01, 'f', '01/01/1980', 'Worker')
