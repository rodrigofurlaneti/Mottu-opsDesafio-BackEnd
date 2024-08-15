CREATE PROCEDURE GetUserProfileById
    @ProfileId INT
AS
BEGIN
    SELECT Id, ProfileName
    FROM UserProfiles
    WHERE Id = @ProfileId;
END;
