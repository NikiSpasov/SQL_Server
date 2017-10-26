
CREATE DATABASE Hotel

CREATE TABLE Employees 
(Id INT PRIMARY KEY IDENTITY (1,1),
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR (20) NOT NULL,
Title VARCHAR (10),
Notes TEXT)

INSERT INTO Employees
VALUES
('Vancho', 'Otverkata', 'Cheef', NULL),
('Vancho', 'Otverkata', 'Cheef', NULL),
('Vancho', 'Otverkata', 'Cheef', NULL)

CREATE TABLE Customers
(AccountNumber INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR (20) NOT NULL,
PhoneNumber VARCHAR(30),
EmergencyName VARCHAR(30),
EmergencyNumber VARCHAR(30),
Notes VARCHAR(255))

INSERT INTO Customers
VALUES 
('Pesho', 'GLavata', NULL, NULL, NULL, NULL),
('Pesho', 'GLavata', NULL, NULL, NULL, NULL),
('Pesho', 'GLavata', NULL, NULL, NULL, NULL)


CREATE TABLE RoomStatus
(RoomStatus BIT NOT NULL,
 Notes TEXT)

 INSERT INTO RoomStatus
 VALUES
 (1, 'Cleened'),
 (1, 'Cleened'),
 (1, 'Cleened')



CREATE TABLE RoomTypes
(RoomType VARCHAR(20) PRIMARY KEY NOT NULL,
 Notes TEXT)

 INSERT INTO RoomTypes
 VALUES
 ('3 beds and showers', NULL),
 ('3 beds and showerss', NULL),
 ('3 beds and showersss', NULL)

CREATE TABLE BedTypes (
BedType VARCHAR(20),
Notes TEXT)

INSERT INTO BedTypes
VALUES
('Soft', NULL),
('Soft', NULL),
('Soft', NULL)


CREATE TABLE Rooms 
(RoomNumber INT, 
RoomType VARCHAR (20), 
BedType VARCHAR (20),
Rate INT,
RoomStatus BIT,
Notes TEXT) 

INSERT INTO Rooms
VALUES
(1, NULL, NULL, 3, 1,'Good view'),
(1, NULL, NULL, 3, 1,'Good view'),
(1, NULL, NULL, 3, 1,'Good view')


CREATE TABLE Payments
(Id INT PRIMARY KEY IDENTITY (1,1),
EmployeeId INT NOT NULL,
PaymentDate DATE,
AccountNumber VARCHAR (30),
FirstDateOccupied DATE,
LastDateOccupied DATE,
TotalDays INT,
AmountCharged DECIMAL,
TaxRate DEC,
TaxAmount DEC,
PaymentTotal DEC,
Notes TEXT)

INSERT INTO Payments
VALUES
(1, '10-22-2002', NULL, NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1, '10-22-2002', NULL, NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1, '10-22-2002', NULL, NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

CREATE TABLE Occupancies
(Id INT PRIMARY KEY IDENTITY(1,1),
EmployeeId INT NOT NULL,
DateOccupied DATE,
AccountNumber VARCHAR(30),
RoomNumber INT,
RateApplied DEC,
PhoneCharge DEC,
Notes TEXT)

INSERT INTO Occupancies (EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
VALUES
(1, '2-22-2001', NULL, 1, 1.50, 1.50, 'GOOD BYE!'),
(1, '2-28-2001', NULL, 1, 1.50, 1.50, 'GOOD BYE!'),
(1, '2-14-2001', NULL, 1, 1.50, 1.50, 'GOOD BYE!')
