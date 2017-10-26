CREATE DATABASE CarRental 

USE CarRental

CREATE TABLE Categories (
Id INT PRIMARY KEY IDENTITY(1,1),
CategoryName VARCHAR(50) NOT NULL,
DailyRate DECIMAL,
WeeklyRate DECIMAL, 
MonthlyRate DECIMAL,
WeekendRate DECIMAL
)

INSERT INTO Categories
VALUES
('Trucks', 22.40, 110.00, 440, 40),
('Cars', 22.40, 110.00, 440, 40),
('Bikes', 22.40, 110.00, 440, 40)

CREATE TABLE Cars
(Id INT PRIMARY KEY IDENTITY(1,1),
PlateNumber VARCHAR(20) NOT NULL,
Manufacturer VARCHAR(20) NOT NULL,
Model VARCHAR(20),
CarYear INT,
CategoryId INT,
Doors INT,
Picture IMAGE,
Condition TEXT,
Available BIT)

INSERT INTO Cars
VALUES
('CA 3568  KC', 'Audi', 'A6', 2000, 1, 5, NULL,'Good', 1),
('CA 3568  KC', 'Audi', 'A8', 2000, 1, 5, NULL,'Good', 1),
('CA 3568  KC', 'Audi', 'A4', 2000, 1, 5, NULL,'Good', 1)


CREATE TABLE Employees 
(Id INT PRIMARY KEY IDENTITY(1,1), 
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
Title VARCHAR(20),
Notes TEXT)

INSERT INTO Employees
VALUES
('Gosho', 'Peshev', NULL, NULL),
('Gosho', 'Peshev', NULL, NULL),
('Gosho', 'Peshev', NULL, NULL)


CREATE TABLE Customers 
(Id INT PRIMARY KEY IDENTITY(1,1),
DriverLicenceNumber VARCHAR(40) NOT NULL,
FullName VARCHAR(20) NOT NULL,
Address VARCHAR(20) NOT NULL,
City VARCHAR,
ZIPCode INT,
Notes TEXT)

INSERT INTO Customers
VALUES
('CA 4356 GT', 'Te PA TOa', 'Sofeto', NULL, NULL, NULL),
('CA 4356 GT', 'Te PA TOa', 'Sofeto', NULL, NULL, NULL),
('CA 4356 GT', 'Te PA TOa', 'Sofeto', NULL, NULL, NULL)


CREATE TABLE RentalOrders 
(Id INT PRIMARY KEY IDENTITY(1,1), 
EmployeeId INT NOT NULL,
CustomerId INT NOT NULL,
CarId INT NOT NULL,
TankLevel DECIMAL,
KilometrageStart INT NOT NULL,
KilometrageEnd INT NOT NULL,
TotalKilometrage INT,
StartDate DATE,
EndDate DATE,
TotalDays INT,
RateApplied BIT,
TaxRate DECIMAL,
OrderStatus TEXT,
Notes TEXT)

INSERT INTO RentalOrders
VALUES 
(1, 1, 1, NULL, 123, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 1, 1, NULL, 123, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 1, 1, NULL, 123, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)



