CREATE PROCEDURE GetAllCouriers
AS
BEGIN
    SELECT Id, Identifier, Name, CNPJ, BirthDate, CNHNumber, CNHType, CNHImagePath, RegistrationDate
    FROM Couriers;
END;
