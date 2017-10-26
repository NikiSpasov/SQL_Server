CREATE TABLE Students(
StudentID INT PRIMARY KEY IDENTITY,
Name VARCHAR(50) NOT NULL
)

CREATE TABLE Exams(
ExamID INT PRIMARY KEY IDENTITY (101, 1),
Name VARCHAR(50) NOT NULL
)

CREATE TABLE StudentsExams(
StudentID INT NOT NULL,
ExamID INT NOT NULL,

CONSTRAINT PK_StudentID_ExamID
PRIMARY KEY(StudentID, ExamID),

CONSTRAINT FK_StudentsExams_Students
FOREIGN KEY (StudentID)
REFERENCES Students(StudentID),

CONSTRAINT FK_StudentsExams_ExamID
FOREIGN KEY (ExamID)
REFERENCES Exams(ExamID)
)

INSERT INTO Students (Name)
VALUES
('Mila'),
('Toni'),
('Ron')

INSERT INTO Exams
VALUES
('SpringMVC'),
('Neo4j'),
('Oracle 11g')

INSERT INTO StudentsExams
VALUES
(1, 101),
(1, 102),
(2, 101),
(3, 103),
(2, 102),
(2, 103)
