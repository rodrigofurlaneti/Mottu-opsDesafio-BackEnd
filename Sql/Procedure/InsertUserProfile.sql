CREATE PROCEDURE InsertUserProfile
    @ProfileName NVARCHAR(50)
AS
BEGIN
    INSERT INTO UserProfiles (ProfileName)
    VALUES (@ProfileName);
    
    SELECT SCOPE_IDENTITY() AS NewProfileId;
END;
