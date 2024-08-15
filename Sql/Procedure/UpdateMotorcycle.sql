USE [rodrigofurlaneti3108_Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Motorcycles_Update]
    @MotorcycleId INT,
    @Identifier NVARCHAR(50),
    @Year INT,
    @Model NVARCHAR(100),
    @LicensePlate NVARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE [dbo].[Mottu_Table_Motorcycles]
    SET Identifier = @Identifier,
        Year = @Year,
        Model = @Model,
        LicensePlate = @LicensePlate
    WHERE Id = @MotorcycleId;
END;
GO


