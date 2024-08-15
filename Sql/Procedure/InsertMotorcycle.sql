CREATE PROCEDURE InsertMotorcycle
    @Identifier NVARCHAR(50),
    @Year INT,
    @Model NVARCHAR(100),
    @LicensePlate NVARCHAR(10)
AS
BEGIN
    INSERT INTO Motorcycles (Identifier, Year, Model, LicensePlate)
    VALUES (@Identifier, @Year, @Model, @LicensePlate);
    
    SELECT SCOPE_IDENTITY() AS NewMotorcycleId;
END;
