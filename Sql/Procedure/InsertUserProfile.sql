USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_UserProfiles_Insert]
    @ProfileName NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Mottu_Table_UserProfiles] (ProfileName)
    VALUES (@ProfileName);
    
    SELECT SCOPE_IDENTITY() AS NewProfileId;
END;
GO


