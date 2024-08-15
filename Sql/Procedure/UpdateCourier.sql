USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Couriers_Update]
    @CourierId INT,
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

    UPDATE [dbo].[Mottu_Table_Couriers]
    SET Identifier = @Identifier,
        Name = @Name,
        CNPJ = @CNPJ,
        BirthDate = @BirthDate,
        CNHNumber = @CNHNumber,
        CNHType = @CNHType,
        CNHImagePath = @CNHImagePath
    WHERE Id = @CourierId;
END;
GO


