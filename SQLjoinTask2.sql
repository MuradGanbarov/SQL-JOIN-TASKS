CREATE DATABASE PCCO
USE PCCO

CREATE TABLE Categories (
Id INT PRIMARY KEY IDENTITY,
[Name] varchar(100) UNIQUE NOT NULL
)

CREATE TABLE Products (
Id INT PRIMARY KEY IDENTITY,
[Name] varchar(100) UNIQUE NOT NULL,
Price DECIMAL (10,1) NOT NULL,
Cost DECIMAL (10,1) NOT NULL,
CategoryID INT REFERENCES Categories(Id)
)

CREATE TABLE Color (
Id INT PRIMARY KEY IDENTITY,
[Name] varchar(100) UNIQUE
)

CREATE TABLE ColorProduct (
ColorID INT REFERENCES Color(Id),
ProductID INT REFERENCES Products(Id)
)

INSERT INTO Categories 
VALUES 
('Fruits'),
('Vegetables'),
('Meets'),
('Sweets')

INSERT INTO Color
VALUES
('Green'),
('Orange'),
('White'),
('Yellow')

INSERT INTO Products([Name],Price,Cost,CategoryID) VALUES
('Lolipop',2,1,4),
('Apple',1,1,1),
('Potato',1,2,2),
('Sheep',1,14,3)

INSERT INTO ColorProduct VALUES
(1,2),
(2,1),
(3,4),
(4,3)

SELECT p.Name,p.Price,p.Cost,c.Name AS 'Category Name',Color.Name as 'Color name' FROM Products as p
JOIN Categories AS c ON p.CategoryID = c.ID
JOIN ColorProduct AS cp ON p.ID = cp.ProductID
JOIN Color ON Color.Id = cp.ColorID






