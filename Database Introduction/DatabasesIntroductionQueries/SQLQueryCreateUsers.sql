CREATE TABLE Users
(
Id BIGINT PRIMARY KEY IDENTITY,
Username VARCHAR(30) NOT NULL, 
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARCHAR(MAX),
LastLoginTime DATETIME,
IsDeleted BIT
)

INSERT INTO Users 
(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
VALUES
('Stoyan', 'StronGpass123', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', '1/12/2021', 0),
('Ivan', 'StrongPass123', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', '1/08/2021', 0),
('Ivaylo', 'stronGpass123', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', '1/09/2019', 0),
('Kamen', 'StRonGpass123', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', '1/05/2021', 0),
('Kaloyan', 'StronGpass123456', 'https://i.stack.imgur.com/WdSbT.jpg?s=32&g=1', '8/23/2001', 0)
