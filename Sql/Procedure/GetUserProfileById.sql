USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_UserProfiles_GetById]
    @UserProfilesId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [dbo].[Mottu_Table_UserProfiles]
    WHERE Id = @UserProfilesId;
END;
GO


