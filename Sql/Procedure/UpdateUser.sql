USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Users_Update]
    @UserId INT,
    @Username NVARCHAR(50),
    @PasswordHash NVARCHAR(255),
    @ProfileId INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [dbo].[Mottu_Table_Users]
    SET Username = @Username,
        PasswordHash = @PasswordHash,
        ProfileId = @ProfileId
    WHERE Id = @UserId;
END;
GO


