CREATE PROCEDURE InsertUser
    @Username NVARCHAR(50),
    @PasswordHash NVARCHAR(255),
    @ProfileId INT
AS
BEGIN
    INSERT INTO Users (Username, PasswordHash, ProfileId)
    VALUES (@Username, @PasswordHash, @ProfileId);
    
    SELECT SCOPE_IDENTITY() AS NewUserId;
END;
