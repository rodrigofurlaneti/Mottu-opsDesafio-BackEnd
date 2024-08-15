USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Users_Insert]
    @Username NVARCHAR(50),
    @PasswordHash NVARCHAR(255),
    @ProfileId INT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Mottu_Table_Users] (Username, PasswordHash, ProfileId)
    VALUES (@Username, @PasswordHash, @ProfileId);
    
    SELECT SCOPE_IDENTITY() AS NewUserId;
END;
GO


