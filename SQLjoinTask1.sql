CREATE DATABASE USERROLES
USE USERROLES

CREATE TABLE Roles(
ID INT PRIMARY KEY IDENTITY,
[Name] varchar(100)
);


CREATE TABLE Users (
ID INT PRIMARY KEY IDENTITY,
Username varchar(100) UNIQUE NOT NULL,
[Password] varchar(100) NOT NULL,
RoleID INT REFERENCES Roles(ID)
)


INSERT INTO Roles([Name])
VALUES
('Admin'),
('Moderator'),
('User');


INSERT INTO Users (Username,[Password],RoleID)
VALUES
('Murad','Murad2004',3),
('Rashad', 'Rashad2004',2),
('Asiman', 'Asiman2004',1);

SELECT U.Username, U.Password,Roles.Name as 'Role' FROM Users as U
JOIN Roles ON Roles.ID = U.RoleID