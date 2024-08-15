USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_MotorcycleRental_Delete] (@MotorcycleRentalId INT)

AS
BEGIN TRANSACTION
    DELETE FROM [dbo].[Mottu_Table_MotorcycleRental]
		WHERE Id = @MotorcycleRentalId;
COMMIT TRANSACTION
GO


