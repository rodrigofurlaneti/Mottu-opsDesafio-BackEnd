CREATE PROCEDURE DeleteMotorcycleRental
    @RentalId INT
AS
BEGIN
    DELETE FROM MotorcycleRentals
    WHERE Id = @RentalId;
END;
