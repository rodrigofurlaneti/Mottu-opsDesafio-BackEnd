CREATE PROCEDURE GetCourierById
    @CourierId INT
AS
BEGIN
    SELECT Id, Identifier, Name, CNPJ, BirthDate, CNHNumber, CNHType, CNHImagePath, RegistrationDate
    FROM Couriers
    WHERE Id = @CourierId;
END;
