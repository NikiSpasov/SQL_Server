
CREATE TABLE Drivers (
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(50) NOT NULL
)
 
CREATE TABLE Cars (
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(50) NOT NULL,
DriverId INT FOREIGN KEY REFERENCES Drivers(Id) UNIQUE
)

INSERT INTO Drivers (Name) VALUES
('Ivan Ivanov'),
('Toshko')

INSERT INTO Cars (Name, DriverId)
VALUES
('Mercedes', 1),
('Trabant', 2),
('AZLK', 2) -- not working!

SELECT * FROM Cars
SELECT * FROM Drivers