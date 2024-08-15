CREATE PROCEDURE DeleteUser
    @UserId INT
AS
BEGIN
    DELETE FROM Users
    WHERE Id = @UserId;
END;
