CREATE DATABASE CarRental

CREATE TABLE Categories
(
Id INT PRIMARY KEY NOT NULL,
CategoryName VARCHAR(50) NOT NULL,
DailyRate DECIMAL(15,2) NOT NULL,
WeeklyRate DECIMAL(15,2) NOT NULL,
MonthlyRate DECIMAL(15,2) NOT NULL,
WeekendRate DECIMAL(15,2)NOT NULL
)

INSERT INTO Categories (Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate) VALUES
(1, 'sedan', 5, 6, 5, 6),
(2, 'jeep', 8, 7, 7, 8),
(3, 'cabrio', 8, 5, 7, 6)

CREATE TABLE Cars
(
Id INT PRIMARY KEY NOT NULL,
PlateNumber CHAR(10) NOT NULL,
Manufacturer VARCHAR(50) NOT NULL,
Model VARCHAR(50) NOT NULL,
CarYear DATETIME NOT NULL,
CategoryId INT NOT NULL,
Doors INT,
Picture VARCHAR(MAX),
Condition VARCHAR(30) NOT NULL,
Available BIT NOT NULL
)

INSERT INTO Cars VALUES
(1, '1234567899', 'Ferrari', 'T-20', 3/15/2008, 4, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.usatoday.com%2Fstory%2Fmoney%2Fcars%2Fdriveon%2F2013%2F03%2F05%2Fferrari-laferrari-geneva-motor-show%2F1964725%2F&psig=AOvVaw38ESypYifsX7dKsBmgXxgE&ust=1611257030990000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLjJyKqeq-4CFQAAAAAdAAAAABAD', 'new', 1),
(2, '1821567899', 'Ferrari', 'T-30', 3/08/2001, 4, 2, NULL, 'used', 0),
(3, '9826767879', 'Ford', 'T-40', 3/23/2020, 4, 2, NULL, 'used', 1)

CREATE TABLE Employees
(
Id INT PRIMARY KEY NOT NULL,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR(100) NOT NULL,
Title VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Employees VALUES
(6, 'Petar', 'Kanev', 'seller', NULL),
(5, 'Ivan', 'Petrov', 'seller', NULL),
(4, 'Dimitar', 'Penev', 'seller', NULL)

CREATE TABLE Customers
(
Id INT PRIMARY KEY NOT NULL,
DriverLicenceNumber CHAR(10) NOT NULL,
FullName VARCHAR(200) NOT NULL,
[Address] VARCHAR(200) NOT NULL,
City VARCHAR(100) NOT NULL,
ZIPCode CHAR(4),
Notes VARCHAR(MAX)
)

INSERT INTO Customers VALUES
(1, '1234567895', 'Petar Ivanov', 'Dorostol 31', 'Rousse', '7004', NULL),
(12, '7801567899', 'Ivan Petrov', 'Nezabravka 11', 'Rousse', '7002', NULL),
(2, '9354567895', 'Kiril Kunchev', 'Makedonia 1', 'Sofia', NULL, NULL)

CREATE TABLE RentalOrders
(
Id INT PRIMARY KEY NOT NULL,
EmployeeId INT NOT NULL,
CustomerId INT NOT NULL,
CarId INT NOT NULL,
TankLevel DECIMAL(15,2),
KilometrageStart DECIMAL(15,2) NOT NULL,
KilometrageEnd DECIMAL(15,2) NOT NULL,
TotalKilometrage DECIMAL(15,2) NOT NULL,
StartDate DATETIME NOT NULL,
EndDate DATETIME NOT NULL,
TotalDays INT NOT NULL,
RateApplied DECIMAL(15,2) NOT NULL,
TaxRate DECIMAL(15,2) NOT NULL,
OrderStatus VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO RentalOrders VALUES
(1, 6, 234, 56, 34.5, 11557.89, 11957.89, 400, 1/16/2021, 1/19/2021, 3, 56.5, 10, 'finished', NULL),
(5, 6, 567, 893, 34.5, 11557.89, 11957.89, 400, 2/19/2021, 2/25/2021, 6, 56.5, 10, 'open', NULL),
(112, 6, 998, 12, 34.5, 11557.89, 11957.89, 400, 1/16/2021, 1/19/2021, 3, 56.5, 10, 'finished', NULL)