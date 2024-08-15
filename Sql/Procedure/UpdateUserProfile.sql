USE [rodrigofurlaneti3108_Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_UserProfiles_Update]
    @ProfileId INT,
    @ProfileName NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [dbo].[Mottu_Table_UserProfiles]
    SET ProfileName = @ProfileName
    WHERE Id = @ProfileId;
END;
GO


