CREATE PROCEDURE GetAllUserProfiles
AS
BEGIN
    SELECT Id, ProfileName
    FROM UserProfiles;
END;
