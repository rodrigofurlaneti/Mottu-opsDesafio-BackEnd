CREATE PROCEDURE GetMotorcycleById
    @MotorcycleId INT
AS
BEGIN
    SELECT Id, Identifier, Year, Model, LicensePlate, RegistrationDate
    FROM Motorcycles
    WHERE Id = @MotorcycleId;
END;
