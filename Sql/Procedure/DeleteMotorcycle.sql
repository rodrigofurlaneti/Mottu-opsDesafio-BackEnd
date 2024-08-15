USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Motorcycle_Delete] (@MotorcycleId INT)

AS
BEGIN TRANSACTION
    DELETE FROM [dbo].[Mottu_Table_Motorcycle]
		WHERE Id = @MotorcycleId;
COMMIT TRANSACTION
GO
