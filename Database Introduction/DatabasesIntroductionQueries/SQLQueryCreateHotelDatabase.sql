--CREATE DATABASE Hotel

--USE Hotel

CREATE TABLE Employees
(
Id INT PRIMARY KEY,
FirstName VARCHAR(90) NOT NULL,
LastName VARCHAR(90) NOT NULL,
Title VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Employees(Id, FirstName, LastName, Title, Notes) VALUES
(1, 'Stella', 'Kaneva', 'CEO', 'Best manager ever'),
(2, 'Kalin', 'Vrachanski', 'Accountant', NULL),
(3, 'Ivan', 'Petrov', 'CTO', 'Best CTO ever')

CREATE TABLE Customers
(
AccountNumber INT PRIMARY KEY,
FirstName VARCHAR(90) NOT NULL,
LastName VARCHAR(90) NOT NULL,
PhoneNumber CHAR(10) NOT NULL,
EmergencyName VARCHAR(90) NOT NULL,
EmergencyNumber CHAR(10) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Customers (AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes) VALUES
(120, 'Petar', 'Kirilov', '0888648464', 'Kirilova', '1234567890', NULL),
(129, 'Ivan', 'Petrov', '0868648964', 'Petrova', '5678912345', NULL),
(124, 'Kiril', 'Kirilov', '0883618462', 'Kirilova', '1834564590', NULL)

CREATE TABLE RoomStatus
(
RoomStatus VARCHAR(20) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO RoomStatus(RoomStatus, Notes) VALUES
('free', NULL),
('not free', 'Ipsum lorem'),
('cleaning', Null)

CREATE TABLE RoomTypes
(
RoomType VARCHAR(20) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO RoomTypes(RoomType, Notes) VALUES
('suit', NULL),
('appartament', '123456'),
('single', NULL)

CREATE TABLE BedTypes
(
BedType VARCHAR(20) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO BedTypes(BedType, Notes) VALUES
('single', Null),
('king size', 'really good one'),
('double', NULL)

CREATE TABLE Rooms
(
RoomNumber INT PRIMARY KEY,
RoomType VARCHAR(20) NOT NULL,
BedType VARCHAR(20) NOT NULL,
Rate INT,
RoomStatus VARCHAR(20) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Rooms(RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes) VALUES
(234, 'appartment', 'double', 8, 'not free', NULL),
(114, 'single', 'single', 7, 'free', NULL),
(554, 'suit', 'king size', 9, 'cleaning', NULL)

CREATE TABLE Payments
(
Id INT PRIMARY KEY,
EmployeeId INT NOT NULL,
PaymentDate DATETIME NOT NULL,
AccountNumber INT NOT NULL,
FirstDateOccupied DATETIME NOT NULL,
LastDateOccupied DATETIME NOT NULL,
TotalDays INT NOT NULL,
AmountCharged DECIMAL(15,2) NOT NULL,
TaxRate INT NOT NULL,
TaxAmount DECIMAL(15,2) NOT NULL,
PaymentTotal DECIMAL(15,2) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Payments(Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes) VALUES
(1, 1, GETDATE(), 120, '5/5/2012', '5/8/2012', 3, 450.50, 10, 45.50, 495.50, NULL),
(2, 6, GETDATE(), 122, '8/15/2001', '8/19/2001', 4, 550.50, 10, 55.50, 595.50, NULL),
(3, 9, GETDATE(), 121, '7/1/2018', '7/8/2018', 7, 1000, 10, 100, 1100, NULL)

CREATE TABLE Occupancies
(
Id INT PRIMARY KEY,
EmployeeId INT NOT NULL,
DateOccupied DATETIME NOT NULL,
AccountNumber INT NOT NULL,
RoomNumber INT NOT NULL,
RateApplied INT,
PhoneCharge DECIMAL(15,2),
Notes VARCHAR(MAX)
)

INSERT INTO Occupancies(Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes) VALUES
(1, 5, '7/12/2003', 120, 234, 9, 10.59, NULL),
(3, 4, '6/10/2015', 122, 114, NULL, NULL, NULL),
(2, 1, '8/22/2004', 121, 554, 8, 22.05, NULL)

