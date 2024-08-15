USE [rodrigofurlaneti3108_Finance]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Couriers_Insert]
    @Identifier NVARCHAR(50),
    @Name NVARCHAR(100),
    @CNPJ NVARCHAR(14),
    @BirthDate DATE,
    @CNHNumber NVARCHAR(20),
    @CNHType NVARCHAR(3),
    @CNHImagePath NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Mottu_Table_Couriers] (Identifier, Name, CNPJ, BirthDate, CNHNumber, CNHType, CNHImagePath)
    VALUES (@Identifier, @Name, @CNPJ, @BirthDate, @CNHNumber, @CNHType, @CNHImagePath);
    
    SELECT SCOPE_IDENTITY() AS NewCourierId;
END;
GO


