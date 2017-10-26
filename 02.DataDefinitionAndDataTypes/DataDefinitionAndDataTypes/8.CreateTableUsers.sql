

CREATE TABLE Users(
 Id BIGINT IDENTITY(1, 1), 
 Username VARCHAR(30) UNIQUE NOT NULL,
 Password VARCHAR(26) NOT NULL,
 ProfilePicture VARBINARY (MAX)
 CHECK(DATALENGTH(ProfilePicture)>900*1024),
 LastLoginTime DATETIME,
 IsDeleted BIT,
 CONSTRAINT PK_Users PRIMARY KEY (Id)
)

INSERT INTO Users (Username, Password, ProfilePicture, LastLoginTime, IsDeleted)
VALUES 
('Peshffo', '123234456', NULL, NULL, 1),
('Pessho', '12343456', NULL, NULL, 0),
('Pefsho', '123wer456', NULL, NULL, 0),
('Pesrho', '12343356', NULL, NULL, 1),
('Peseho', '12334tre56', NULL, NULL, 1)