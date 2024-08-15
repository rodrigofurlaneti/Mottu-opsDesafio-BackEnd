CREATE PROCEDURE UpdateUser
    @UserId INT,
    @Username NVARCHAR(50),
    @PasswordHash NVARCHAR(255),
    @ProfileId INT
AS
BEGIN
    UPDATE Users
    SET Username = @Username,
        PasswordHash = @PasswordHash,
        ProfileId = @ProfileId
    WHERE Id = @UserId;
END;
