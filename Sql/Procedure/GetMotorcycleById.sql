USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Motorcycles_GetById]
    @MotorcyclesId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [dbo].[Ecommerce_Table_Motorcycles]
    WHERE Id = @MotorcyclesId;
END;
GO
