USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Motorcycles_Insert]
    @Identifier NVARCHAR(50),
    @Year INT,
    @Model NVARCHAR(100),
    @LicensePlate NVARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Mottu_Table_Motorcycles] (Identifier, Year, Model, LicensePlate)
    VALUES (@Identifier, @Year, @Model, @LicensePlate);
    
    SELECT SCOPE_IDENTITY() AS NewMotorcycleId;
END;
GO


