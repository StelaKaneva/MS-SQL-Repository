CREATE TABLE People
(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(200) NOT NULL,
Picture VARCHAR(MAX),
Height DECIMAL(3,2),
[Weight] DECIMAL(5,2),
Gender VARCHAR(1) NOT NULL,
Birthdate DATETIME NOT NULL,
Biography NVARCHAR(MAX)
)

INSERT INTO People
([Name], Picture, Height, [Weight], Gender, Birthdate, Biography)
VALUES
('Stoyan', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', 1.80, 80.20, 'm', '1/01/1987', 'Lorem ipsum dolor sit amet'),
('Stella', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', 1.65, 75.20, 'f', '8/15/2011', 'Lorem ipsum dolor sit amet'),
('Petar', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', 1.83, 89.20, 'm', '3/15/2005', 'Lorem ipsum dolor sit amet'),
('Kristiyan', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', 1.90, 85.25, 'm', '4/12/1980', 'Lorem ipsum dolor sit amet'),
('Stoil', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', 1.81, 80.80, 'm', '8/23/2001', 'Lorem ipsum dolor sit amet')

