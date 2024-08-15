USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Couriers_GetById]
    @CouriersId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [dbo].[Ecommerce_Table_Couriers]
    WHERE Id = @CouriersId;
END;
GO
