ALTER TABLE Users
DROP CONSTRAINT PK__Users__3214EC07E2D6A2B7

ALTER TABLE Users
ADD CONSTRAINT PK_IdUsername PRIMARY KEY(Id, Username)

