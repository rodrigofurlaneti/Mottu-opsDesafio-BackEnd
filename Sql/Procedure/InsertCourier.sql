CREATE PROCEDURE InsertCourier
    @Identifier NVARCHAR(50),
    @Name NVARCHAR(100),
    @CNPJ NVARCHAR(14),
    @BirthDate DATE,
    @CNHNumber NVARCHAR(20),
    @CNHType NVARCHAR(3),
    @CNHImagePath NVARCHAR(255) = NULL
AS
BEGIN
    INSERT INTO Couriers (Identifier, Name, CNPJ, BirthDate, CNHNumber, CNHType, CNHImagePath)
    VALUES (@Identifier, @Name, @CNPJ, @BirthDate, @CNHNumber, @CNHType, @CNHImagePath);
    
    SELECT SCOPE_IDENTITY() AS NewCourierId;
END;
