CREATE DATABASE Movies

CREATE TABLE Directors(
Id INT PRIMARY KEY IDENTITY (1, 1),
DirectorName VARCHAR(50) NOT NULL,
Notes TEXT 
)

CREATE TABLE Genres (
Id INT PRIMARY KEY IDENTITY (1, 1),
GenreName VARCHAR(50) NOT NULL,
Notes TEXT 
)

CREATE TABLE Categories (
Id INT PRIMARY KEY IDENTITY (1, 1),
CategoryName VARCHAR(50) NOT NULL,
Notes TEXT 
)

CREATE TABLE Movies(
Id INT PRIMARY KEY IDENTITY (1, 1),
Title VARCHAR(50) NOT NULL,
DirectorId INT NOT NULL,
CopyrightYear INT,
Length INT,
GenreId INT NOT NULL,
CategoryId INT NOT NULL,
Rating INT,
Notes TEXT
)


INSERT INTO Directors(DirectorName, Notes)
Values('Pesho', NULL)
INSERT INTO Directors(DirectorName, Notes)
Values('Gosho', 'Nearly done!')
INSERT INTO Directors(DirectorName, Notes)
Values('Maria', 'Completely done!')
INSERT INTO Directors(DirectorName, Notes)
Values('Ivanka', NULL)
INSERT INTO Directors(DirectorName, Notes)
Values('Todorka', NULL)

INSERT INTO Genres(GenreName, Notes)
Values('Pesho', NULL)
INSERT INTO Genres(GenreName, Notes)
Values('Gosho', 'Completely done!')
INSERT INTO Genres(GenreName, Notes)
Values('Ivanka', NULL)
INSERT INTO Genres(GenreName, Notes)
Values('Mariika', 'Completely done!')
INSERT INTO Genres(GenreName, Notes)
Values('Stefan', 'Nearly done!')

INSERT INTO Categories(CategoryName, Notes)
Values('Pesho', 'Completely done!')
INSERT INTO Categories(CategoryName, Notes)
Values('Gosho', 'Nearly done!')
INSERT INTO Categories(CategoryName, Notes)
Values('Pesho', NULL)
INSERT INTO Categories(CategoryName, Notes)
Values('Mariika', 'Nearly done!')
INSERT INTO Categories(CategoryName, Notes)
Values('Stefan', 'Completely done!')

INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Scary Movie', 11233412, NULL, NUll, 643675, 3, 6,NULL)
INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Action Movie', 535123, NULL, NUll, 123453, 2, 4,NULL)
INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Erotic Movie', 7657457, NULL, NUll, 51532, 1, 3,NULL)
INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Love movie', 123547568, NULL, NUll, 4343, 4, 2,NULL)
INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Dramatic Movie', 97876543, NULL, NUll, 123, 1, 5,NULL)