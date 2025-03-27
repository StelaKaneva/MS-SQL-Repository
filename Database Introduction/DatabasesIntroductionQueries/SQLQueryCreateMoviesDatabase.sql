CREATE DATABASE Movies

USE Movies

CREATE TABLE Directors
(
Id INT PRIMARY KEY NOT NULL,
DirectorName VARCHAR(100) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Directors (Id, DirectorName, Notes) VALUES
(1, 'Lucas', NULL),
(2, 'Copolla', NULL),
(3, 'Tarantino', 'Ipsum loren'),
(4, 'Nyakoy si', NULL),
(5, 'Martin', 'Neizvesten')

CREATE TABLE Genres 
(
Id INT PRIMARY KEY NOT NULL,
GenreName VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Genres (Id, GenreName, Notes) VALUES
(1, 'western', NULL),
(2, 'comedy', NULL),
(3, 'drama', NULL),
(4, 'series', NULL),
(5, 'horror', NULL)

CREATE TABLE Categories
(
Id INT PRIMARY KEY NOT NULL,
CategoryName VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Categories(Id, CategoryName, Notes) VALUES
(5, 'children', NULL),
(7, 'over 14', NULL),
(8, 'over 12', NULL),
(1, 'children', NULL),
(9, 'over 14', NULL)

CREATE TABLE Movies
(
Id INT PRIMARY KEY NOT NULL,
Title VARCHAR(150) NOT NULL,
DirectorId INT NOT NULL,
CopyrightYear DATETIME NOT NULL,
[Length] INT NOT NULL,
GenreId INT,
CategoryId INT,
Rating INT NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Movies(Id, Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId, Rating, Notes) VALUES
(6, 'Romeo Must Die', 9, 2003, 115, 2, 1, 7, NULL),
(7, 'Titanic', 9, 2003, 150, 2, 1, 8, NULL),
(8, 'Catch Me If You Can', 9, 2008, 112, 2, 1, 6, NULL),
(78, 'Game Of Thrones', 9, 2020, 138, 2, 1, 8, NULL),
(2, 'Gatsby', 9, 2015, 156, 2, 1, 7, NULL)