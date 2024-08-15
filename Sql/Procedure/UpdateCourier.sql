CREATE PROCEDURE UpdateCourier
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
    UPDATE Couriers
    SET Identifier = @Identifier,
        Name = @Name,
        CNPJ = @CNPJ,
        BirthDate = @BirthDate,
        CNHNumber = @CNHNumber,
        CNHType = @CNHType,
        CNHImagePath = @CNHImagePath
    WHERE Id = @CourierId;
END;
