CREATE PROCEDURE GetAllMotorcycles
AS
BEGIN
    SELECT Id, Identifier, Year, Model, LicensePlate, RegistrationDate
    FROM Motorcycles;
END;
