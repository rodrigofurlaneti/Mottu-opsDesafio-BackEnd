CREATE PROCEDURE UpdateMotorcycle
    @MotorcycleId INT,
    @Identifier NVARCHAR(50),
    @Year INT,
    @Model NVARCHAR(100),
    @LicensePlate NVARCHAR(10)
AS
BEGIN
    UPDATE Motorcycles
    SET Identifier = @Identifier,
        Year = @Year,
        Model = @Model,
        LicensePlate = @LicensePlate
    WHERE Id = @MotorcycleId;
END;
