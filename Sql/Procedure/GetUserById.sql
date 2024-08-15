CREATE PROCEDURE GetUserById
    @UserId INT
AS
BEGIN
    SELECT Id, Username, ProfileId, CreatedAt
    FROM Users
    WHERE Id = @UserId;
END;
