USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_MotorcycleRental_GetById]
    @MotorcycleRentalId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [dbo].[Ecommerce_Table_MotorcycleRental]
    WHERE Id = @MotorcycleRentalId;
END;
GO


