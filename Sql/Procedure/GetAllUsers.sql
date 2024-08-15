CREATE PROCEDURE GetAllUsers
AS
BEGIN
    SELECT Id, Username, ProfileId, CreatedAt
    FROM Users;
END;
