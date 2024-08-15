CREATE PROCEDURE DeleteUserProfile
    @ProfileId INT
AS
BEGIN
    DELETE FROM UserProfiles
    WHERE Id = @ProfileId;
END;
