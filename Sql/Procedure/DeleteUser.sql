USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_User_Delete] (@UserId INT)

AS
BEGIN TRANSACTION
    DELETE FROM [dbo].[Mottu_Table_User]
		WHERE Id = @UserId;
COMMIT TRANSACTION
GO


