CREATE PROCEDURE UpdateUserProfile
    @ProfileId INT,
    @ProfileName NVARCHAR(50)
AS
BEGIN
    UPDATE UserProfiles
    SET ProfileName = @ProfileName
    WHERE Id = @ProfileId;
END;
